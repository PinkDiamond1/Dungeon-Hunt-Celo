import React from "react";
import { BrowserRouter, Switch, Route } from 'react-router-dom';
import history from './history';

import Selection from './components/Selection';
import Upload from './components/Upload';
import Login from './components/Login';
import TheExchange from './components/SwapExchange/SwapExchange';
import StoryBooth from './components/StoryBooth';



export default function Routes() {
    return (
        <BrowserRouter history={history} forceRefresh={true}>
            <Switch>
                <Route path="/" exact component={Selection} />
                <Route path="/Upload" exact component={Upload} />
                <Route path="/Login" exact component={Login} />
                <Route path="/TheExchange" exact component={TheExchange} />
                <Route path="/StoryBooth" exact component={StoryBooth} />
            </Switch>
        </BrowserRouter>
    )

}
