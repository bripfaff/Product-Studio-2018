import pandas as pd
import numpy as np
from scipy import stats
import sklearn as sk
import datetime as dt
import warnings
warnings.filterwarnings('ignore')

df = pd.read_csv('full_data_new.csv', sep=",", encoding = "ISO-8859-1")
actual= pd.read_csv("s&p500-returns-new.csv", sep=",")
# df = df.loc[:, 'Account.Group_link':'Like']
df = df.rename(index=str, columns={"Tweet.Text.Size.Block": "Tweet"})
df = df.rename(index=str, columns={"Tweet.Nav": "Date"})
actual = actual.rename(index=str, columns={"date": "Date", "returns": "sprtrn" })
df['sprtrn'] = pd.Series(np.zeros(len(df)), index=df.index)
df['Date'] = pd.to_datetime(df.Date)
actual['Date'] = pd.to_datetime(actual["Date"])

def date_return_match(start_date, end_date, df, returns, periods):
    while start_date<end_date:
        ret= np.prod(1+returns.ix[(returns["Date"]>start_date) & (returns["Date"]<=start_date+dt.timedelta(days=period)) ,"sprtrn"].astype(float))
        df.ix[df["Date"]==start_date,"sprtrn"] = ret-1    # update b_matrix with the new data
        start_date+= dt.timedelta(days=1)
    df["return"] = df["sprtrn"]
    df.loc[df.loc[:,"sprtrn"]<-0.0075,"sprtrn"] = 4
    df.loc[df.loc[:,"sprtrn"]<0,"sprtrn"] = 3
    df.loc[df.loc[:,"sprtrn"]<0.0075,"sprtrn"] = 2
    df.loc[df.loc[:,"sprtrn"]<1,"sprtrn"] = 1
    return(df)

def make_prediction(b_matrix, word_list, tweets):
    tweet_pred=[]
    for sentence in tweets["Tweet"]:
        p1=1
        p2=1
        p3=1
        p4=1
        for w in sentence.split():
            if w in b_matrix.columns:
                s = np.sum(b_matrix.w)
                p1 = p1 * np.log(b_matrix.iloc[0][w]/s)
                p2 = p2 * np.log(b_matrix.iloc[1][w]/s)
                p3 = p3 * np.log(b_matrix.iloc[2][w]/s)
                p4 = p4 * np.log(b_matrix.iloc[3][w]/s)
        tweet_pred.append(np.argmax([p1,p2,p3,p4]))
        if np.argmax([p1,p2,p3,p4])>2:
            print(sentence, p1, p2, p3, p4)
    return(stats.mode(tweet_pred).mode) 


def stem(df):
    df["Tweet"]= df["Tweet"].str.lower()
    stop_words = ["a","about","above","after","again","against"," all","am","an",\
                  "and","any","are","as","at","be","because","been","before",\
                  "being","below","between","both","but","by","could","did",\
                  "do","does","doing","down","during","each","few","for","from",\
                  "further","had","has","have","having","he","hed","hell","hes",\
                  "her","here","heres","hers","herself","him","himself","his",\
                  "how","hows","i","id","ill","im","ive","if","in","into","is",\
                  "it","its","its","itself","lets","me","more","most","my","myself"\
                  ,"nor","of","on","once","only","or","other","ought","our","ours",\
                  "ourselves","out","over","own","same","she","shed","shell","shes"\
                  ,"should","so","some","such","than","that","thats","the","their",\
                  "theirs","them","themselves","then","there","theres","these",\
                  "they","theyd","theyll","theyre","theyve","this","those","through"\
                  ,"to","too","under","until","up","very","was","we","wed","well",\
                  "were","weve","were","what","whats","when","whens","where","wheres"\
                  ,"which","while","who","whos","whom","why","whys","with","would",\
                  "you","youd","youll","youre","youve","your","yours","yourself","yourselves"]
    for i in range(len(df)):
        sentence2=df["Tweet"].iat[i].replace("/","").replace("@","").replace("*","").replace("#","")\
        .replace("'","").replace("+","").replace(",","").replace("!","").replace(".","")\
        .replace("?","").replace(";","").replace("$","").replace(":","").replace(";","").replace("(","")\
        .replace(")","").replace("%","").replace("...","").replace("\\", "")\
        .replace("-","").replace("_", "").replace(">", "").replace("<","")\
        .replace("[", "").replace("]","")
        s= " "
        for word in sentence2.split():
            if word in stop_words or 'http' in word or 'pictwitter' in word:
                s = s
            else:
                s += word+ " "
        df["Tweet"].iat[i] = s 
    return(df)


def create_wl(df): 
    word_list=[]
    for sentence in df["Tweet"]:
        for word in sentence.split():
            if word not in word_list:
                word_list.append(word)
    return(word_list)

def create_b_matrix(word_list, df):
    b_matrix = pd.DataFrame(np.zeros((4, len(word_list))),columns=word_list)
    for i in range(len(df)):
        sentence=df["Tweet"].iloc[i]
        for word in sentence.split():
            if word in word_list:
                ida = df["sprtrn"].iloc[i]
#                 b_matrix.iloc[np.int(training["sprtrn"].iloc[i]-1)][word] +=1
                if ida==1:
                    b_matrix[word].iloc[0] +=1
                elif ida==2:
                    b_matrix[word].iloc[1] +=1
                elif ida==3:
                    b_matrix[word].iloc[2] +=1
                elif ida==4:
                    b_matrix[word].iloc[3] +=1
    return(b_matrix)

def update_b_matrix(b_matrix, word_list, training):
    for i in range(len(training)):
        sentence=training["Tweet"].iloc[i]
        for word in sentence.split():
            if word in word_list:
                ida = training["sprtrn"].iloc[i]
#                 b_matrix.iloc[np.int(training["sprtrn"].iloc[i]-1)][word] +=1
                if ida==1:
                    b_matrix[word].iloc[0] +=1
                elif ida==2:
                    b_matrix[word].iloc[1] +=1
                elif ida==3:
                    b_matrix[word].iloc[2] +=1
                elif ida==4:
                    b_matrix[word].iloc[3] +=1
    return(b_matrix)

def main(start_date, end_date, df, periods):
    preds = []
    dat=[]
    rets=[]
    while start_date < end_date:
        print(start_date)
        training = df.loc[(df["Date"]<start_date-dt.timedelta(days=7)) & (df["Date"]>start_date-dt.timedelta(days=187)),:] 
        training = stem(training)
        word_list = create_wl(training)
        b_matrix = create_b_matrix(word_list, training)
        tweets= df.loc[(df["Date"]<=start_date) & (df["Date"]>=start_date-dt.timedelta(days=periods)) ,:]
        if tweets.shape[0] > 0:
            tweets= pd.DataFrame(tweets)
            tweets= stem(tweets)
            pred = make_prediction(b_matrix, word_list, tweets)
            preds.append(pred)
            rets.append(tweets.loc[tweets["Date"]== start_date, "return"].iloc[0])
            dat.append(start_date)
            dpred = pd.DataFrame(data=[start_date], columns=["Date"])
            dpred["prediction"] = np.int_(pred)
            dpred["actual"] = tweets.loc[tweets["Date"]== start_date, "return"].iloc[0]
            dpred.to_csv("new_predictions_v2.csv", mode='a' , index= False, header=False)
        start_date+= dt.timedelta(days=periods)
    return(preds, dat, rets,  b_matrix)
    
start_date= pd.to_datetime("1/1/2015")
end_date= pd.to_datetime("9/1/2018")
period=7
df=date_return_match(start_date, end_date, df, actual, period)

start_date= pd.to_datetime("1/1/2015")
end_date= pd.to_datetime("9/1/2018")
period=7
preds, dat, rets, b_matrix= main(start_date, end_date, df, period)
