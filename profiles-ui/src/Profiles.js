import React from 'react';
import gql from "graphql-tag";
import { Query } from "react-apollo";

const GET_PROFILES = gql`
  query getProfiles {
    profiles {
      id
      name
      title
    }
  }
`;

const Profiles = () => (
  <Query query={GET_PROFILES}>
    {({ loading, error, data }) => {
      if (loading) return "Loading...";
      if (error) return `Error! ${error.message}`;

      return (
        <ul>
            {data.profiles.map(profile => (
                <li key={profile.id}>
                  {`${profile.title}. ${profile.name}`}
                </li>
            ))}
        </ul>
      );
    }}
  </Query>
);

export default Profiles;