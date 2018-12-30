package com.example.budvinchathura.imageproc1;

import android.graphics.Bitmap;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.SurfaceView;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

import org.opencv.android.BaseLoaderCallback;
import org.opencv.android.CameraBridgeViewBase;
import org.opencv.android.JavaCameraView;
import org.opencv.android.OpenCVLoader;
import org.opencv.android.Utils;
import org.opencv.core.Core;
import org.opencv.core.CvType;
import org.opencv.core.Mat;
import org.opencv.core.Point;
import org.opencv.core.Scalar;
import org.opencv.core.Size;
import org.opencv.imgproc.Imgproc;

public class MainActivity extends AppCompatActivity implements CameraBridgeViewBase.CvCameraViewListener2 {

    private static final String TAG = "MainActivity";

    CameraBridgeViewBase cameraBridgeViewBase;
    Mat mat1, grayMat;
    BaseLoaderCallback baseLoaderCallback;
    Scalar sums;
    TextView textView1,textViewR,textViewG,textViewB;
    SeekBar seekBar1,seekBar2;
    ImageView imageView;
    volatile double param1=50,param2=50;
    volatile int numberOfCircles=0;
    volatile  Mat circles = new Mat(320,
            480, CvType.CV_8UC1);


    static{ System.loadLibrary("opencv_java"); }

//    static {
//        if (OpenCVLoader.initDebug()) {
//            Log.d(TAG, "OpenCV Loaded");
//        } else {
//            Log.d(TAG, "OpenCV not Loaded");
//        }
//    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
//        OpenCVLoader.initDebug();
        setContentView(R.layout.activity_main);
        textView1 = (TextView) findViewById(R.id.textViewID);
        textViewR = findViewById(R.id.textViewR);
        textViewG = findViewById(R.id.textViewG);
        textViewB = findViewById(R.id.textViewB);
        imageView= (ImageView) findViewById(R.id.imageView);
        imageView.setRotation(90);
        seekBar1 = findViewById(R.id.seekBar);
        seekBar1.setProgress(50);
        seekBar1.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                param1 =  progress ;


            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {

            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {

            }
        });

        seekBar2 = findViewById(R.id.seekBar2);
        seekBar2.setProgress(50);
        seekBar2.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                param2 = progress ;

            }

            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {

            }

            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {

            }
        });

        cameraBridgeViewBase = (JavaCameraView) findViewById(R.id.javaCameraView);
        cameraBridgeViewBase.setMaxFrameSize(1536,2560);
        cameraBridgeViewBase.setVisibility(SurfaceView.VISIBLE);
        cameraBridgeViewBase.setCvCameraViewListener(this);
        cameraBridgeViewBase.enableView();

        baseLoaderCallback = new BaseLoaderCallback(this) {
            @Override
            public void onManagerConnected(int status) {
                super.onManagerConnected(status);

                switch (status){
                    case BaseLoaderCallback.SUCCESS :
                        cameraBridgeViewBase.enableView();
                        break;
                    default:
                        super.onManagerConnected(status);
                        break;
                }
            }
        };

    }

    @Override
    public void onCameraViewStarted(int width, int height) {
        mat1 = new Mat(width, height, CvType.CV_8UC4);
//        mat2 = new Mat(width, height, CvType.CV_8UC4);
//        mat3 = new Mat(width, height, CvType.CV_8UC4);

    }

    @Override
    public void onCameraViewStopped() {
        mat1.release();
//        mat2.release();
//        mat3.release();

    }

    @Override
    public Mat onCameraFrame(CameraBridgeViewBase.CvCameraViewFrame inputFrame) {
        mat1 = inputFrame.rgba();
//        mat1T = mat1.t();
//        Core.flip(mat1.t(), mat1T, 1);
//        Imgproc.resize(mat1T, mat1T, mat1.size());
//        System.out.println("Size "+String.valueOf(mat1.size()));

        //matrix size = 320x480
//        double[] temp = mat1.get(319, 479);
//        mat1.release();
//        textView1.setText(String.valueOf(mat1.channels()));

//        textView1.setText(String.valueOf(temp[0])+" "+String.valueOf(temp[1])+" "+String.valueOf(temp[2]));
//        textView1.setText(String.valueOf(temp[3]));

//        System.out.println("Colour "+String.valueOf(temp[0])+" "+String.valueOf(temp[1])+" "+String.valueOf(temp[2])+" "+String.valueOf(temp[3]));





        int colorChannels = Imgproc.COLOR_BGRA2GRAY;

        grayMat = new Mat();
        Imgproc.cvtColor(mat1, grayMat, colorChannels);

        /* reduce the noise so we avoid false circle detection */
        Imgproc.GaussianBlur(grayMat, grayMat, new Size(9, 9), 2, 2);

// accumulator value
        double dp = 1.2d;
// minimum distance between the center coordinates of detected circles in pixels
        double minDist = 20;

// min and max radii (set these values as you desire)
        int minRadius = 10, maxRadius = 200;

// param1 = gradient value used to handle edge detection
// param2 = Accumulator threshold value for the
// cv2.CV_HOUGH_GRADIENT method.
// The smaller the threshold is, the more circles will be
// detected (including false circles).
// The larger the threshold is, the more circles will
// potentially be returned.
//        double param1 = 70, param2 = 72;

        /* create a Mat object to store the circles detected */
//        final Mat circles = new Mat(320,
//                480, CvType.CV_8UC1);

        /* find the circle in the image */
        Imgproc.HoughCircles(grayMat, circles,
                Imgproc.CV_HOUGH_GRADIENT, dp, minDist, param1,
                param2, minRadius, maxRadius);

        /* get the number of circles detected */
//        final int numberOfCircles = (circles.rows() == 0) ? 0 : circles.cols();
        numberOfCircles = (circles.rows() == 0) ? 0 : circles.cols();
        System.out.println("Circles "+ String.valueOf(numberOfCircles));
        grayMat.release();

        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                textView1.setText(String.valueOf(numberOfCircles));
                if (numberOfCircles ==1){
                    double[] circleCoordinates = circles.get(0, 0);


                    int x = (int) circleCoordinates[0], y = (int) circleCoordinates[1];
                    double[] temp = mat1.get(y,x);
                    System.out.println("Colour "+String.valueOf(temp[0])+" "+String.valueOf(temp[1])+" "+String.valueOf(temp[2]));
                    textViewR.setText(String.valueOf(String.valueOf(temp[0])));
                    textViewG.setText(String.valueOf(String.valueOf(temp[1])));
                    textViewB.setText(String.valueOf(String.valueOf(temp[2])));

                    Point center = new Point(x, y);

                    int radius = (int) circleCoordinates[2];

                    /* circle's outline */
                    Core.circle(mat1, center, radius, new Scalar(0,
                            255, 0), 4);

                    /* circle's center outline */
                    Core.rectangle(mat1, new Point(x - 5, y - 5),
                            new Point(x + 5, y + 5),
                            new Scalar(0, 128, 255), -1);

                    // create a bitmap:
                    Bitmap bm = Bitmap.createBitmap(mat1.cols(), mat1.rows(),Bitmap.Config.ARGB_8888);
                    // convert Mat image to bitmap::
                    Utils.matToBitmap(mat1, bm);
                    //setting the image
                    imageView.setImageBitmap(bm);



                }
                else{
                    textViewR.setText(String.valueOf("N/A"));
                    textViewG.setText(String.valueOf("N/A"));
                    textViewB.setText(String.valueOf("N/A"));

                }
            }
        });

//        for (int i=0; i<numberOfCircles; i++) {
//
//
//            /* get the circle details, circleCoordinates[0, 1, 2] = (x,y,r)
//             * (x,y) are the coordinates of the circle's center
//             */
//            double[] circleCoordinates = circles.get(0, i);
//
//
//            int x = (int) circleCoordinates[0], y = (int) circleCoordinates[1];
//            double[] temp = mat1.get(y,x);
//            System.out.println("Colour "+String.valueOf(temp[0])+" "+String.valueOf(temp[1])+" "+String.valueOf(temp[2]));
//
//
//        }

        return mat1;

    }


    @Override
    protected void onPause() {
        super.onPause();

        if (cameraBridgeViewBase != null) {
            cameraBridgeViewBase.disableView();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();

        if (!OpenCVLoader.initDebug()) {
            Toast.makeText(getApplicationContext(), "There is a problem with openCV", Toast.LENGTH_LONG).show();
            OpenCVLoader.initAsync(OpenCVLoader.OPENCV_VERSION_2_4_11,this,baseLoaderCallback);
        }
        else{
//            OpenCVLoader.initDebug();
            baseLoaderCallback.onManagerConnected(BaseLoaderCallback.SUCCESS);
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();

        if (cameraBridgeViewBase != null) {
            cameraBridgeViewBase.disableView();
        }
    }

    @Override
    protected void onRestart() {
        super.onRestart();
        if (!OpenCVLoader.initDebug()) {
            Toast.makeText(getApplicationContext(), "There is a problem with openCV", Toast.LENGTH_LONG).show();
            OpenCVLoader.initAsync(OpenCVLoader.OPENCV_VERSION_2_4_11,this,baseLoaderCallback);
        }
        else{
            baseLoaderCallback.onManagerConnected(BaseLoaderCallback.SUCCESS);
        }
    }




}
