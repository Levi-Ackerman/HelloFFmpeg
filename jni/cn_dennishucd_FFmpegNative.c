#include "cn_dennishucd_FFmpegNative.h"
#include "include/libavcodec/avcodec.h"
#include "include/libavformat/avformat.h"
#include "include/libswscale/swscale.h"
#include "include/libswresample/swresample.h"
#include "include/libavutil/avutil.h"
#include "include/libavfilter/avfilter.h"
JNIEXPORT jint JNICALL Java_cn_dennishucd_FFmpegNative_avcodec_1find_1decoder(JNIEnv *env, jobject obj, jint codecID)
{
	 AVCodec*codec = NULL;
   
                /*register all formats and codecs */  
                av_register_all();
   
                codec= avcodec_find_decoder(codecID);
   
                if(codec != NULL)
                {  
                                return 0;
                }
                else  
                {
                                return-1;
                }
	return 0;
}
