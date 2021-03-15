class Constants {
    /**
       Max number of FPS for fixedUpdate calls
    **/
    public static var MaxFps = 24;

    /**
       Number of ms per frame

       Computed using MaxFps
    **/
    public static var Mspf = Math.round(1 / MaxFps * 1000);
}
