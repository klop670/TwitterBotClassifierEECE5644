
function twitterUserTable = getTwitterUserData(userScreenName,tableFields)
% Requires Datafeed Toolbox
%create consumerKey & consumerSecret matlab string objects for your twitter
%account 
    load consumerKey
    load consumerSecret
    load accessToken
    load accessTokenSec
    c = twitter(consumerKey, consumerSecret, accessToken, accessTokenSec);
    
    if c.StatusCode == 200

        baseURL = 'https://api.twitter.com/1.1/users/lookup.json';
        parameters.screen_name = userScreenName;
        userJSON = getdata(c,baseURL, parameters);
        
        userData = userJSON.Body.Data;
        mastTableVarNames = tableFields.Properties.VariableNames;
        
        userDataTable = table();
        for i = mastTableVarNames
            j = char(i);
            
            if isfield(userData, j) == 1
                insert = userData.(j);
                if ischar(insert) == 1
                    insert = string(insert);
                elseif isempty(insert) == 1
                    insert = 0;
                end
                userDataTable.(j) = insert;
            end
        end
        twitterUserTable = userDataTable;
    else
        disp('ERROR');
        twitterUserTable = nan;
    end
    
    
    
end
