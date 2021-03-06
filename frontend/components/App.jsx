import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import LoginFormContainer from './session/login_form_container';
import SignupFormContainer from './session/signup_form_container';
import RunIndexContainer from './run/run_index_container';
import RunShowContainer from './run/run_show_container';
import FriendsIndexContainer from './friends/friends_index_container';
import FindFriends from './friends/find_friends';
import WorkoutIndexContainer from './workouts/workout_index_container';
import WorkoutFormContainer from './workouts/workout_form_container';
import WorkoutShowContainer from './workouts/workout_show_container';
import ActivityFeedContainer from './dashboard/activity_feed_container';
import MapContainer from './map/map_container';
import SplashContainer from './splash/splash_container';
import Footer from './footer/footer';
import Nav from './nav/nav';
import NavDash from './dashboard/dashboard-nav';
import FriendsNav from './friends/friends-nav';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import { Route, Link, Switch } from 'react-router-dom';


const App = () => (
  <div>
    <header>
      <Route path='/' component={GreetingContainer} />
    </header>
    <AuthRoute exact path='/' component={SplashContainer} />
    <ProtectedRoute path ='/workouts/' component={Nav}/>
    <ProtectedRoute path ='/people/' component={Nav}/>
    <ProtectedRoute path ='/routes/my_routes/' component={Nav}/>
    <ProtectedRoute path ='/my_home/activity_feed/' component={Nav}/>
    <ProtectedRoute path ='/my_home/activity_feed/' component={NavDash}/>
    <ProtectedRoute path ='/routes/my_routes' component={NavDash}/>
    <ProtectedRoute path ='/workouts/' component={NavDash}/>
    <ProtectedRoute path ='/people/' component={FriendsNav}/>
    <ProtectedRoute path ='/my_home/activity_feed/' component={ActivityFeedContainer}/>
    <ProtectedRoute exact path='/routes/create' component={MapContainer} />
    <ProtectedRoute exact path='/routes/views/:runId' component={RunShowContainer} />
    <ProtectedRoute exact path='/routes/my_routes' component={RunIndexContainer} />
    <ProtectedRoute exact path='/people/friends' component={FriendsIndexContainer} />
    <ProtectedRoute exact path='/people/friends/find' component={FindFriends} />
    <ProtectedRoute exact path='/workouts/create/' component={WorkoutFormContainer} />
    <ProtectedRoute exact path='/workouts/views/:workoutId/' component={WorkoutShowContainer} />
    <ProtectedRoute exact path='/workouts/' component={WorkoutIndexContainer} />

    <Switch>
      <AuthRoute exact path="/login" component={LoginFormContainer} />
      <AuthRoute exact path="/signup" component={SignupFormContainer} />
      <Route path='/' component={Footer} />
    </Switch>
  </div>
);

export default App;
