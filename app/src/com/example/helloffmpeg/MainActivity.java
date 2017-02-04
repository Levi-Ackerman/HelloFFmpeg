package com.example.helloffmpeg;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import cn.dennishucd.*;

public class MainActivity extends Activity {

	private Button button_test;  
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        

        button_test = (Button)findViewById(R.id.button1);
        button_test.setOnClickListener(new Button.OnClickListener()
        {

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				System.out.println("hello");
				TextView tv = (TextView)findViewById(R.id.textview_hello);  
                FFmpegNative ffmpeg = new FFmpegNative();
                int codecID =28;
                int res = ffmpeg.avcodec_find_decoder(codecID);
                                 
                if(res ==0) {  
                                tv.setText("Success!");  
                }  
                else{  
                                tv.setText("Failed!");  
                }  
			}
        	
        
        });
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
    
    
}
