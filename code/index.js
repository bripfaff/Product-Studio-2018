import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import DatePicker from 'react-datepicker';
import moment from 'moment';
import "react-datepicker/dist/react-datepicker.css";

class IndexSelection extends React.Component {
    constructor(props) {
        super(props);
        this.state = {value: 'S&P500', showComponent: false};
        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.handleClick = this.handleClick.bind(this);
    }

    handleChange(event) {
        this.setState({value: event.target.value});
    }

    handleSubmit(event) {
        console.log("Outside if: We're here!!" + this.state.value)
        if (this.state.value === 'S&P500') {
            console.log("Inside if: We're here in SP!!" + this.state.value)
            alert('Your index is ' + this.state.value + '. This is an American stock market index. It is based on the market capitalizations of 500 large companies.');
        } else {
            console.log("Inside if: We're here in IBOV!!" + this.state.value)
            alert('Your index is ' + this.state.value + '. This is a Brazilian stock market index.  It is the benchmark index of about 60 stocks.');
        }
        event.preventDefault();
    }

    handleClick() {
        this.setState({showComponent: true});
    }

    // handleClick = (button) => {
    //     this.setState({ buttonPressed: button })
    // }

    render() {
        return (
            <div>
                <div>
                <form onSubmit={this.handleSubmit}>
                    <label color='#800000'>
                        Pick An Index: {"  "}
                        <select value={this.state.value} onChange={this.handleChange}>
                            <option value="S&P500">S&P500</option>
                            <option value="IBOV">IBOV</option>
                        </select>
                    </label>
                    <text>   </text>
                    <input type="submit" value="More Info" />
                </form>
                </div>
                <div>
                    <br/>
                    <button className="button" onClick={this.handleClick}>PREDICT</button>
                    {this.state.showComponent && this.state.value == 'S&P500' ? <ImageSP500/> :
                        this.state.showComponent && this.state.value == 'IBOV' ? <ImageIBOV/> : null}
                </div>
            </div>
        );
    }
}

class StartDate extends React.Component {
    constructor(props) {
        super(props);
        this.state = {startDate: moment()};

        this.handleChange = this.handleChange.bind(this);
        // this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleChange(date) {
        this.setState({startDate: date});
    }

    render() {
        return (
            <label>
                Start Date:{"  "}
                <DatePicker selected={this.state.startDate}
                            onChange={this.handleChange}
                            dropdownMode='select'/>
            </label>
        );
    }
}

class EndDate extends React.Component {
    constructor(props) {
        super(props);
        this.state = {endDate: moment()};

        this.handleChange = this.handleChange.bind(this);
       // this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleChange(date) {
        this.setState({endDate: date});
    }

    render() {
        return (
            <label>
                End Date:{"  "}
                <DatePicker selected={this.state.endDate}
                            onChange={this.handleChange}
                            dropdownMode='select'/>
            </label>
        );
    }
}

class FundAmount extends React.Component {
    constructor(props) {
        super(props);
        this.state = {value: ''};

        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleChange(event) {
        this.setState({value: event.target.value});
    }

    handleSubmit(event) {
        alert('Your fund amount is: ' + this.state.value);
        event.preventDefault();
    }

    render() {
        return (
            <form onSubmit={this.handleSubmit}>
                <label>
                    Fund Amount:{"  "}
                    <input type="text" value={this.state.value} onChange={this.handleChange} />
                </label>
            </form>
        );
    }
}


class ImageSP500 extends React.Component {
    render() {
        return (
            <div className = "predictions">
                <div className="photos">
                    <img className = "resize" src="SP500_Return.png" alt="returns"/>
                </div>
                <div className="photos">
                    <img className = "resize" src="SP500_Fund.png" alt="returns"/>
                </div>
                <br/>
                <div className = "weekly">
                    <table className = "preds">
                        <tr id  = "row0">
                            <td>Week</td>
                            <td>Predictions</td>
                        </tr>
                        <tr id  = "row1">
                            <td>08/27/2018</td>
                            <td>Up</td>
                        </tr>
                    </table>
                </div>
            </div>
        );
    }
}

class ImageIBOV extends React.Component {
    render() {
        return (
            <div>
                <div className="photos">
                    <img className = "resize" src="IBOV_Return.png" alt="returns"/>
                </div>
                <br/>
                <br/>
                <div className="photos">
                    <img className = "resize" src="IBOV_Fund.png" alt="returns"/>
                </div>
                <br/>
                <div className = "weekly">
                    <table className = "preds">
                        <tr className  = "row0" >
                            <td>Week</td>
                            <td>Predictions</td>
                        </tr>
                        <tr id  = "row1">
                            <td>11/03/2017</td>
                            <td>Stay</td>
                        </tr>
                    </table>
                </div>
            </div>

        );
    }
}


class Dashboard extends React.Component {
    render() {
        return (
            <div className="dashboard" >
                <br/>
                <div className="start-date">
                    <StartDate/>
                </div>
                <br/>
                <div className="EndDate">
                    <EndDate/>
                </div>
                <br/>
                <div className="FundAmount">
                    <FundAmount/>
                </div>
                <br/>
                <div className="index-selection">
                    <IndexSelection/>
                </div>
                <br/>
            </div>

        );
    }
}

ReactDOM.render(
    <Dashboard/>,
    document.getElementById('predictbox')
);

