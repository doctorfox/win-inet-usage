# win-inet-usage
Batch script to log how much data in Mb you have used since you last cleared the usage stats on a Windows PC.
Once you have the files from the repository in a folder on your system, you will need to know the path/location where you have cloned/extracted the files to.
This is the path you will beusing for the steps listed below.

# How to Schedule a Task on Windows 10 to run the batch file `runps.bat`

This guide will walk you through the steps to create a scheduled task on Windows 10 that automatically runs the `runps.bat` file.

## Steps to Schedule the Task

1. **Open Task Scheduler**
   - Press `Win + S` to open the search bar.
   - Type `Task Scheduler` and press `Enter` to open the Task Scheduler.

2. **Create a New Task**
   - In the Task Scheduler window, click on `Action` in the menu bar.
   - Select `Create Task...` from the dropdown menu.

3. **Configure the General Settings**
   - In the `General` tab:
     - Enter a name for the task, such as `Run Usage Script`.
     - Optionally, provide a description for the task.
     - Choose `Run whether user is logged on or not` if you want the task to run even when you are not logged in.
     - Check `Run with highest privileges` if the task requires administrative permissions.

4. **Set the Trigger**
   - Go to the `Triggers` tab.
   - Click on `New...` to create a new trigger.
   - Set the trigger according to your preference (e.g., Daily, Weekly, At log on, etc.).
   - Configure the specific settings for the trigger and click `OK`.

5. **Configure the Action**
   - Go to the `Actions` tab.
   - Click on `New...` to create a new action.
   - Set the `Action` to `Start a program`.
   - In the `Program/script` field, click `Browse...` and locate the `runps.bat` file.
   - Click `OK` to save the action.

6. **Set the Conditions (Optional)**
   - Go to the `Conditions` tab.
   - Configure any conditions you want, such as starting the task only if the computer is idle or on AC power.
   - Adjust settings according to your needs and click `OK`.

7. **Configure Settings (Optional)**
   - Go to the `Settings` tab.
   - Configure additional settings like allowing the task to be run on demand, stopping the task if it runs longer than a specific time, etc.
   - Adjust settings according to your needs and click `OK`.

8. **Save the Task**
   - After configuring all the settings, click `OK` in the `Create Task` window.
   - You may be prompted to enter your user password to save the task. Enter the password and click `OK`.

## Verifying the Task

1. **Check the Task in Task Scheduler**
   - In the Task Scheduler window, find your task in the `Task Scheduler Library` under the name you specified.
   - You can right-click the task and select `Run` to test it.

2. **Check the Task History**
   - Go to the `History` tab of your task to see the run history and verify that it has run successfully.

