# Koos/ Equal Experts/ OLX Jobs Personas

Prepared by [Robin Gower](mailto:rgower@equalexperts.com).

The objective of this research was to quantify the frequency of certain lister and seeker personas. Those personas were defined in terms of the needs that users face.

The needs and personas are described in one document for [seekers](https://docs.google.com/document/d/1bfOeAsKm_n829DOa_5OYfjS4WTxKaoQ8Fqi8pLrY-EI/) and another for [listers](https://docs.google.com/document/d/1T0f8q6IzlUN9FXJUuD2vlmBDDfC_c--au9MBjhGGWO0/).

## Results

We undertook 2 surveys to understand the needs of listers and seekers. The [questionnaire](https://docs.google.com/spreadsheets/d/1Evxz_LugTvZRr-hd956I3SKutpZCkEFdYZupcX66CuQ/edit#gid=1054504041) describes the questions that were asked (with the original English text and the Polish translation that was presented) and explains (using reference numbers) the purpose of each question (in terms of the need to which it pertained). There were a variety of other questions included for context.

The main results are provided in the [seekers.csv](./seekers.csv) and [listers.csv](/listers.csv) files. The fields provided are described below.

### Seekers

- "user_id" 
- "platform": various identifiers/ dimensions
- "survive" 
- "learn_from_process": seeker needs, with boolean values (TRUE means the user exhibits that need)
- "rank_values" 
- "rank_freedom": ranking of seekers needs from their job (integer where 1 is the highest rank, and 9 the lowest)
- "values" 
- "freedom": boolean value indicating whether the user has a need of jobs with these features (TRUE where that job need is ranked 1st, 2nd or 3rd)
- "missed_interview": has the seeker ever failed to attend an interview without warning? (boolean)
- "satisfaction": seeker satisfaction with OLX integer value out of 10
- "shortcutter" 
- "believer": boolean indicating if the seeker exhibits the given persona
- "no_persona": boolean indicating that the seeker exhibited no personas
- "top_persona": categorical (string/ enum) indicating which single persona was most relevant to this user ("no_persona" if more than one value applied)

### Listers

- "user_id" - "platform": various identifiers/ dimensions
- "referrals" - "best_fit": lister needs, with boolean values (TRUE means the user exhibits that need)
- "recruiter": boolean field indicating whether the lister a recruiter (or are they posting listings as an employer)
- "role": categorical (string/ enum) indicating the respondents role (recruiter, manager, assistant, dedicated HR professional)
- "satisfaction": lister satisfaction with OLX integer value out of 10
- "fixer" - "investigator": boolean indicating if the lister exhibits the given persona
- "no_persona": boolean indicating that the lister exhibited no personas
- "top_persona": categorical (string/ enum) indicating which single persona was most relevant to this user ("no_persona" if more than one value applied)

## Provenance

### Removing misleading users/ sessions

We gather the `user_id` of all authenticated respondents. Users weren't required to be logged-in in order to be invited to take the survey. An attempt was made to identify the `user_id` of unauthenticated respondents by looking through the tracking data from hydra. The following query was used (where `{session_clause}` has the values of the `clm_session_id` field from the raw Survey Monkey response data):

```SQL
select   click.surveyclmsessionid, session.user_id
from     hydra.web as click
         inner join hydra.web as session on click.session_long = session.session_long
where    click.country_code = 'PL'
         and click.action_type = 'click_survey_start'
         and {session_clause}
         and session.country_code = 'PL'
         and session.user_id is not null
group by click.surveyclmsessionid, session.user_id
```

The results are recorded in the [seeker_sessions.csv](./seeker_sessions.csv) and [lister_sessions.csv](./lister_sessions.csv) files.

This query resulted in duplicates - both some users having multiple sessions (repeat survey responses), and some sessions having multiple users (shared computers). In each case these sessions/ users were potentially misleading so the associated responses were removed.

### Transforming survey responses

The questionnaires defined a set of behaviours that would be exhibited by users facing the needs. Respondents were typically asked if they agreed had acting in a corresponding way (note that some, like "abundance of choice" are counter-examples of ways in which people with this need wouldn't behave).

### Mapping the needs to persona

For each respondent, we calculated a score for persona.

For each persona, we identify a set of relevant needs. Each of these needs is assigned a weighting indicating how important having that need is to being in that persona. In most cases the weights were around `0.1` - `0.2`. Most personas have one particularly important need with a weight of `0.4`. Most personas also have a need that they're not expected to exhibit (that the user must not have to match that persona), these were given a weight of `-1.0`. The weights are provided in the [seeker_needs_to_personas.csv](./seeker_needs_to_personas.csv) and [lister_needs_to_personas.csv](./lister_needs_to_personas.csv) files.

If the score exceeded a threshold of 0.4, the user was considered to have the persona.

Using this method, many users exhibit multiple personas. While this is a reasonable description of reality, it does not lend itself well for the sorts of analysis we wanted to pursue (spotting the difference between the personas). To address this we also calculate the top persona of each user.

The top persona is that one that scores the highest for the user. If the user exhibited multiple personas with the same top score, then this column will be blank.

## Lookups

For convenience the archive also includes some lookup tables.

The files [seeker_needs_lookup.csv](./seeker_needs_lookup.csv) and [lister_needs_lookup.csv](./lister_needs_lookup.csv) describe the needs and provide human and machine-readable labels.

The files [seeker_personas_lookup.csv](./seeker_personas_lookup.csv) and [lister_personas_lookup.csv](./lister_personas_lookup.csv) describe the personas, provide human and machine-readable labels, and hex-codes for the colour schemes.
