
![Power BI Desktop 3_11_2025 10_58_10 PM](https://github.com/user-attachments/assets/f521565b-7b98-4008-84e6-c1dc588bce3f)

Objective:

Analyze human thought patterns, emotions, and behaviors to understand how different factors like sleep, stress, and music preferences impact focus, creativity, and happiness.

---------------------------------


This dataset will simulate insights from the human mind, tracking emotions, thoughts, and behavioral patterns. It will require cleaning in Power BI, such as handling null values, removing duplicates, and creating new conditional columns.

Dataset Idea: "Mind Insights - Human Thought Patterns"

### Columns include:

Person_ID: Unique identifier

Age: Age of the person

Gender: Male, Female, Non-binary

Dominant Emotion: Happy, Sad, Angry, Anxious, Excited

Recent Thought: Random thought types (e.g., "Work stress," "Creativity burst," "Existential crisis")

Dream Type: Nightmare, Lucid, Abstract, Forgotten

Hours of Sleep: 3 to 10 hours

Meditation Frequency: Daily, Weekly, Never

Screen Time (hrs/day): 1 to 10 hours

Music Preference: Classical, Rock, Pop, Lo-fi, Metal

Brain Activity Level (%): 20 to 100%

Focus Level (%): 10 to 100%

Creativity Score (1-10): How creative their thoughts are

Anxiety Level (1-10): Scale of anxiety

Happiness Index (1-10): Scale of happiness

Decision-Making Speed (sec): Time taken for decisions

Daydreaming Frequency: High, Medium, Low

Stress Triggers: Work, Relationships, Finance, Health, Social Media

AI Interaction Level: Low, Medium, High

Philosophical Thinking (%): Tendency to overthink deep topics

Caffeine Consumption (mg/day): 0 to 500 mg

Social Interaction Level: Introvert, Ambivert, Extrovert

Most Active Brain Hemisphere: Left, Right, Balanced

Sleep Quality: Poor, Average, Good


The dataset will include intentional dirty data for Power BI cleaning tasks:

Some null values in critical columns like Emotion, Happiness Index, etc.

Duplicates in Person_ID

Unnecessary column Random_Noise

Some incorrect values like negative sleep hours



----------------------------------

Why This Dataset?

Interesting Insights: Mind-related data makes for engaging visualizations.

Varied Cleaning Tasks: Power BI users practice different cleaning techniques.

Diverse Data Types: Numeric, categorical, and percentage values for rich dashboarding.

---------------------------------------------


Tasks to Perform in Power BI:

1)  Data Cleaning Tasks:

1. Remove Duplicate Entries → Eliminate duplicate Person_ID values.


2. Handle Missing Values →

Fill missing values in Dominant Emotion with "Neutral".

Fill missing values in Happiness Index (1-10) with the average value.


3. Delete Unnecessary Columns → Remove the Random_Noise column.


4. Fix Incorrect Data →

Replace negative values in Caffeine Consumption (mg/day) with 0.


----------

2) Create a Conditional Column:

1. Create "Productivity Level" based on Focus & Happiness:

If Focus Level > 70 and Happiness Index > 7 → "Highly Productive"

If Focus Level > 50 → "Moderately Productive"

Else → "Low Productivity"

----------

3) Key Performance Indicators (KPIs):

1. Average Happiness Index → How happy people generally are.


2. Average Focus Level → The overall focus percentage.


3. Most Common Stress Trigger → Find the most reported stress factor.


4. Top 3 Most Productive Age Groups → Identify age groups with the highest productivity levels.


5. Impact of Sleep on Productivity → Compare productivity levels for different sleep hours.


--------





![Power BI Desktop 3_11_2025 10_58_18 PM](https://github.com/user-attachments/assets/08846a1a-1281-4ca2-a228-d3af66a4ce98)



