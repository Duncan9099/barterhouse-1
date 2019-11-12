import React, { Component } from 'react';
import './App.css';



class App extends Component {
  constructor(props) {
    super(props)

    this.state = {
      users: []
    }
  }

  componentDidMount() {
    fetch('/api/users')
      .then(response => response.json())
      .then(json => this.setState({users: json}))
      .catch(error => console.log(error))
  }

  renderUsers() {
    return this.state.users.map(user => <h1>{user.username}</h1>)
  }

  render() {
    return (
      <div className="App">
        {this.renderUsers()}
      </div>
    );
  }

}

export default App;
