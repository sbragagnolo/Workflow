I am a step that starts a static-subflow upon activation, this means that the flow to be started is known at definition time and cannot be changed later on. The instance variable subflow is only used for backward compatibility with previously saved workflow definitions. Now, the class holds on to the history and uses the latest version when being started.