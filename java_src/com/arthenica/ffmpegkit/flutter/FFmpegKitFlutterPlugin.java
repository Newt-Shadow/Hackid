package com.arthenica.ffmpegkit.flutter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.arthenica.ffmpegkit.AbiDetect;
import com.arthenica.ffmpegkit.AbstractSession;
import com.arthenica.ffmpegkit.FFmpegKit;
import com.arthenica.ffmpegkit.FFmpegKitConfig;
import com.arthenica.ffmpegkit.FFmpegSession;
import com.arthenica.ffmpegkit.FFmpegSessionCompleteCallback;
import com.arthenica.ffmpegkit.FFprobeKit;
import com.arthenica.ffmpegkit.FFprobeSession;
import com.arthenica.ffmpegkit.FFprobeSessionCompleteCallback;
import com.arthenica.ffmpegkit.Level;
import com.arthenica.ffmpegkit.LogCallback;
import com.arthenica.ffmpegkit.LogRedirectionStrategy;
import com.arthenica.ffmpegkit.MediaInformation;
import com.arthenica.ffmpegkit.MediaInformationJsonParser;
import com.arthenica.ffmpegkit.MediaInformationSession;
import com.arthenica.ffmpegkit.MediaInformationSessionCompleteCallback;
import com.arthenica.ffmpegkit.Packages;
import com.arthenica.ffmpegkit.ReturnCode;
import com.arthenica.ffmpegkit.Session;
import com.arthenica.ffmpegkit.SessionState;
import com.arthenica.ffmpegkit.Signal;
import com.arthenica.ffmpegkit.Statistics;
import com.arthenica.ffmpegkit.StatisticsCallback;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.tika.pipes.PipesConfigBase;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class FFmpegKitFlutterPlugin implements FlutterPlugin, ActivityAware, MethodChannel.MethodCallHandler, EventChannel.StreamHandler, PluginRegistry.ActivityResultListener {
    public static final String ARGUMENT_ARGUMENTS = "arguments";
    public static final String ARGUMENT_FFPROBE_JSON_OUTPUT = "ffprobeJsonOutput";
    public static final String ARGUMENT_SESSION_ID = "sessionId";
    public static final String ARGUMENT_WAIT_TIMEOUT = "waitTimeout";
    public static final String ARGUMENT_WRITABLE = "writable";
    private static final String EVENT_CHANNEL = "flutter.arthenica.com/ffmpeg_kit_event";
    public static final String EVENT_COMPLETE_CALLBACK_EVENT = "FFmpegKitCompleteCallbackEvent";
    public static final String EVENT_LOG_CALLBACK_EVENT = "FFmpegKitLogCallbackEvent";
    public static final String EVENT_STATISTICS_CALLBACK_EVENT = "FFmpegKitStatisticsCallbackEvent";
    public static final String KEY_LOG_LEVEL = "level";
    public static final String KEY_LOG_MESSAGE = "message";
    public static final String KEY_LOG_SESSION_ID = "sessionId";
    public static final String KEY_SESSION_COMMAND = "command";
    public static final String KEY_SESSION_CREATE_TIME = "createTime";
    public static final String KEY_SESSION_ID = "sessionId";
    public static final String KEY_SESSION_MEDIA_INFORMATION = "mediaInformation";
    public static final String KEY_SESSION_START_TIME = "startTime";
    public static final String KEY_SESSION_TYPE = "type";
    public static final String KEY_STATISTICS_BITRATE = "bitrate";
    public static final String KEY_STATISTICS_SESSION_ID = "sessionId";
    public static final String KEY_STATISTICS_SIZE = "size";
    public static final String KEY_STATISTICS_SPEED = "speed";
    public static final String KEY_STATISTICS_TIME = "time";
    public static final String KEY_STATISTICS_VIDEO_FPS = "videoFps";
    public static final String KEY_STATISTICS_VIDEO_FRAME_NUMBER = "videoFrameNumber";
    public static final String KEY_STATISTICS_VIDEO_QUALITY = "videoQuality";
    public static final String LIBRARY_NAME = "ffmpeg-kit-flutter";
    private static final String METHOD_CHANNEL = "flutter.arthenica.com/ffmpeg_kit";
    public static final String PLATFORM_NAME = "android";
    public static final int READABLE_REQUEST_CODE = 10000;
    public static final int SESSION_TYPE_FFMPEG = 1;
    public static final int SESSION_TYPE_FFPROBE = 2;
    public static final int SESSION_TYPE_MEDIA_INFORMATION = 3;
    public static final int WRITABLE_REQUEST_CODE = 20000;
    private static final int asyncConcurrencyLimit = 10;
    private Activity activity;
    private ActivityPluginBinding activityPluginBinding;
    private Context context;
    private EventChannel eventChannel;
    private EventChannel.EventSink eventSink;
    private FlutterPlugin.FlutterPluginBinding flutterPluginBinding;
    private MethodChannel.Result lastInitiatedIntentResult;
    private MethodChannel methodChannel;
    private final AtomicBoolean logsEnabled = new AtomicBoolean(false);
    private final AtomicBoolean statisticsEnabled = new AtomicBoolean(false);
    private final ExecutorService asyncExecutorService = Executors.newFixedThreadPool(10);
    private final FFmpegKitFlutterMethodResultHandler resultHandler = new FFmpegKitFlutterMethodResultHandler();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy;

        static {
            int[] iArr = new int[LogRedirectionStrategy.values().length];
            $SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy = iArr;
            try {
                iArr[LogRedirectionStrategy.ALWAYS_PRINT_LOGS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy[LogRedirectionStrategy.PRINT_LOGS_WHEN_NO_CALLBACKS_DEFINED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy[LogRedirectionStrategy.PRINT_LOGS_WHEN_GLOBAL_CALLBACK_NOT_DEFINED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy[LogRedirectionStrategy.PRINT_LOGS_WHEN_SESSION_CALLBACK_NOT_DEFINED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy[LogRedirectionStrategy.NEVER_PRINT_LOGS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public FFmpegKitFlutterPlugin() {
        Log.d(LIBRARY_NAME, String.format("FFmpegKitFlutterPlugin created %s.", this));
    }

    private void initActivity(Activity activity, ActivityPluginBinding activityPluginBinding) {
        this.activity = activity;
        activityPluginBinding.addActivityResultListener(this);
        Log.d(LIBRARY_NAME, String.format("FFmpegKitFlutterPlugin %s initialised with activity %s.", this, activity));
    }

    protected static boolean isValidPositiveNumber(Integer num) {
        if (num != null && num.intValue() >= 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$registerGlobalCallbacks$0(com.arthenica.ffmpegkit.Log log) {
        if (this.logsEnabled.get()) {
            emitLog(log);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$registerGlobalCallbacks$1(Statistics statistics) {
        if (this.statisticsEnabled.get()) {
            emitStatistics(statistics);
        }
    }

    protected static int toInt(Level level) {
        if (level == null) {
            level = Level.AV_LOG_TRACE;
        }
        return level.getValue();
    }

    protected static List<Object> toList(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            Object opt = jSONArray.opt(i10);
            if (opt != null) {
                if (opt instanceof JSONArray) {
                    opt = toList((JSONArray) opt);
                } else if (opt instanceof JSONObject) {
                    opt = toMap((JSONObject) opt);
                }
                arrayList.add(opt);
            }
        }
        return arrayList;
    }

    protected static List<Map<String, Object>> toLogMapList(List<com.arthenica.ffmpegkit.Log> list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            arrayList.add(toMap(list.get(i10)));
        }
        return arrayList;
    }

    protected static LogRedirectionStrategy toLogRedirectionStrategy(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return LogRedirectionStrategy.NEVER_PRINT_LOGS;
                    }
                    return LogRedirectionStrategy.PRINT_LOGS_WHEN_SESSION_CALLBACK_NOT_DEFINED;
                }
                return LogRedirectionStrategy.PRINT_LOGS_WHEN_GLOBAL_CALLBACK_NOT_DEFINED;
            }
            return LogRedirectionStrategy.PRINT_LOGS_WHEN_NO_CALLBACKS_DEFINED;
        }
        return LogRedirectionStrategy.ALWAYS_PRINT_LOGS;
    }

    protected static long toLong(Date date) {
        if (date != null) {
            return date.getTime();
        }
        return 0L;
    }

    protected static Map<String, Object> toMap(Session session) {
        if (session == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("sessionId", Long.valueOf(session.getSessionId()));
        hashMap.put(KEY_SESSION_CREATE_TIME, Long.valueOf(toLong(session.getCreateTime())));
        hashMap.put(KEY_SESSION_START_TIME, Long.valueOf(toLong(session.getStartTime())));
        hashMap.put("command", session.getCommand());
        if (session.isFFmpeg()) {
            hashMap.put("type", 1);
        } else if (session.isFFprobe()) {
            hashMap.put("type", 2);
        } else if (session.isMediaInformation()) {
            MediaInformation mediaInformation = ((MediaInformationSession) session).getMediaInformation();
            if (mediaInformation != null) {
                hashMap.put(KEY_SESSION_MEDIA_INFORMATION, toMap(mediaInformation));
            }
            hashMap.put("type", 3);
        }
        return hashMap;
    }

    protected static List<Map<String, Object>> toSessionMapList(List<? extends Session> list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            arrayList.add(toMap(list.get(i10)));
        }
        return arrayList;
    }

    protected static SessionState toSessionState(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return SessionState.COMPLETED;
                }
                return SessionState.FAILED;
            }
            return SessionState.RUNNING;
        }
        return SessionState.CREATED;
    }

    protected static List<Map<String, Object>> toStatisticsMapList(List<Statistics> list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            arrayList.add(toMap(list.get(i10)));
        }
        return arrayList;
    }

    private void uninitActivity() {
        ActivityPluginBinding activityPluginBinding = this.activityPluginBinding;
        if (activityPluginBinding != null) {
            activityPluginBinding.removeActivityResultListener(this);
        }
        this.activity = null;
        this.activityPluginBinding = null;
        Log.d(LIBRARY_NAME, "FFmpegKitFlutterPlugin uninitialized activity.");
    }

    protected void abstractSessionGetAllLogs(Integer num, Integer num2, MethodChannel.Result result) {
        int i10;
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
            return;
        }
        if (isValidPositiveNumber(num2)) {
            i10 = num2.intValue();
        } else {
            i10 = AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT;
        }
        this.resultHandler.successAsync(result, toLogMapList(session.getAllLogs(i10)));
    }

    protected void abstractSessionGetAllLogsAsString(Integer num, Integer num2, MethodChannel.Result result) {
        int i10;
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
            return;
        }
        if (isValidPositiveNumber(num2)) {
            i10 = num2.intValue();
        } else {
            i10 = AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT;
        }
        this.resultHandler.successAsync(result, session.getAllLogsAsString(i10));
    }

    protected void abstractSessionGetDuration(Integer num, MethodChannel.Result result) {
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
        } else {
            this.resultHandler.successAsync(result, Long.valueOf(session.getDuration()));
        }
    }

    protected void abstractSessionGetEndTime(Integer num, MethodChannel.Result result) {
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
            return;
        }
        Date endTime = session.getEndTime();
        if (endTime == null) {
            this.resultHandler.successAsync(result, (Object) null);
        } else {
            this.resultHandler.successAsync(result, Long.valueOf(endTime.getTime()));
        }
    }

    protected void abstractSessionGetFailStackTrace(Integer num, MethodChannel.Result result) {
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
        } else {
            this.resultHandler.successAsync(result, session.getFailStackTrace());
        }
    }

    protected void abstractSessionGetLogs(Integer num, MethodChannel.Result result) {
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
            return;
        }
        this.resultHandler.successAsync(result, toLogMapList(session.getLogs()));
    }

    protected void abstractSessionGetReturnCode(Integer num, MethodChannel.Result result) {
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
            return;
        }
        ReturnCode returnCode = session.getReturnCode();
        if (returnCode == null) {
            this.resultHandler.successAsync(result, (Object) null);
        } else {
            this.resultHandler.successAsync(result, Integer.valueOf(returnCode.getValue()));
        }
    }

    protected void abstractSessionGetState(Integer num, MethodChannel.Result result) {
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
        } else {
            this.resultHandler.successAsync(result, Integer.valueOf(session.getState().ordinal()));
        }
    }

    protected void abstractSessionThereAreAsynchronousMessagesInTransmit(Integer num, MethodChannel.Result result) {
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
        } else {
            this.resultHandler.successAsync(result, Boolean.valueOf(session.thereAreAsynchronousMessagesInTransmit()));
        }
    }

    protected void asyncFFmpegSessionExecute(Integer num, MethodChannel.Result result) {
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
        } else if (session.isFFmpeg()) {
            FFmpegKitConfig.asyncFFmpegExecute((FFmpegSession) session);
            this.resultHandler.successAsync(result, (Object) null);
        } else {
            this.resultHandler.errorAsync(result, "NOT_FFMPEG_SESSION", "A session is found but it does not have the correct type.");
        }
    }

    protected void asyncFFprobeSessionExecute(Integer num, MethodChannel.Result result) {
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
        } else if (session.isFFprobe()) {
            FFmpegKitConfig.asyncFFprobeExecute((FFprobeSession) session);
            this.resultHandler.successAsync(result, (Object) null);
        } else {
            this.resultHandler.errorAsync(result, "NOT_FFPROBE_SESSION", "A session is found but it does not have the correct type.");
        }
    }

    protected void asyncMediaInformationSessionExecute(Integer num, Integer num2, MethodChannel.Result result) {
        int i10;
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
        } else if (session.isMediaInformation()) {
            if (isValidPositiveNumber(num2)) {
                i10 = num2.intValue();
            } else {
                i10 = AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT;
            }
            FFmpegKitConfig.asyncGetMediaInformationExecute((MediaInformationSession) session, i10);
            this.resultHandler.successAsync(result, (Object) null);
        } else {
            this.resultHandler.errorAsync(result, "NOT_MEDIA_INFORMATION_SESSION", "A session is found but it does not have the correct type.");
        }
    }

    protected void cancel(MethodChannel.Result result) {
        FFmpegKit.cancel();
        this.resultHandler.successAsync(result, (Object) null);
    }

    protected void cancelSession(Integer num, MethodChannel.Result result) {
        FFmpegKit.cancel(num.longValue());
        this.resultHandler.successAsync(result, (Object) null);
    }

    protected void clearSessions(MethodChannel.Result result) {
        FFmpegKitConfig.clearSessions();
        this.resultHandler.successAsync(result, (Object) null);
    }

    protected void closeFFmpegPipe(String str, MethodChannel.Result result) {
        FFmpegKitConfig.closeFFmpegPipe(str);
        this.resultHandler.successAsync(result, (Object) null);
    }

    protected void disableLogs(MethodChannel.Result result) {
        disableLogs();
        this.resultHandler.successAsync(result, (Object) null);
    }

    protected void disableRedirection(MethodChannel.Result result) {
        FFmpegKitConfig.disableRedirection();
        this.resultHandler.successAsync(result, (Object) null);
    }

    protected void disableStatistics(MethodChannel.Result result) {
        disableStatistics();
        this.resultHandler.successAsync(result, (Object) null);
    }

    protected void emitLog(com.arthenica.ffmpegkit.Log log) {
        HashMap hashMap = new HashMap();
        hashMap.put(EVENT_LOG_CALLBACK_EVENT, toMap(log));
        this.resultHandler.successAsync(this.eventSink, hashMap);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void emitSession(Session session) {
        HashMap hashMap = new HashMap();
        hashMap.put(EVENT_COMPLETE_CALLBACK_EVENT, toMap(session));
        this.resultHandler.successAsync(this.eventSink, hashMap);
    }

    protected void emitStatistics(Statistics statistics) {
        HashMap hashMap = new HashMap();
        hashMap.put(EVENT_STATISTICS_CALLBACK_EVENT, toMap(statistics));
        this.resultHandler.successAsync(this.eventSink, hashMap);
    }

    protected void enableLogs(MethodChannel.Result result) {
        enableLogs();
        this.resultHandler.successAsync(result, (Object) null);
    }

    protected void enableRedirection(MethodChannel.Result result) {
        enableLogs();
        enableStatistics();
        FFmpegKitConfig.enableRedirection();
        this.resultHandler.successAsync(result, (Object) null);
    }

    protected void enableStatistics(MethodChannel.Result result) {
        enableStatistics();
        this.resultHandler.successAsync(result, (Object) null);
    }

    protected void ffmpegSession(List<String> list, MethodChannel.Result result) {
        this.resultHandler.successAsync(result, toMap(FFmpegSession.create((String[]) list.toArray(new String[0]), null, null, null, LogRedirectionStrategy.NEVER_PRINT_LOGS)));
    }

    protected void ffmpegSessionExecute(Integer num, MethodChannel.Result result) {
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
        } else if (session.isFFmpeg()) {
            this.asyncExecutorService.submit(new FFmpegSessionExecuteTask((FFmpegSession) session, this.resultHandler, result));
        } else {
            this.resultHandler.errorAsync(result, "NOT_FFMPEG_SESSION", "A session is found but it does not have the correct type.");
        }
    }

    protected void ffmpegSessionGetAllStatistics(Integer num, Integer num2, MethodChannel.Result result) {
        int i10;
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
        } else if (session.isFFmpeg()) {
            if (isValidPositiveNumber(num2)) {
                i10 = num2.intValue();
            } else {
                i10 = AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT;
            }
            this.resultHandler.successAsync(result, toStatisticsMapList(((FFmpegSession) session).getAllStatistics(i10)));
        } else {
            this.resultHandler.errorAsync(result, "NOT_FFMPEG_SESSION", "A session is found but it does not have the correct type.");
        }
    }

    protected void ffmpegSessionGetStatistics(Integer num, MethodChannel.Result result) {
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
        } else if (session.isFFmpeg()) {
            this.resultHandler.successAsync(result, toStatisticsMapList(((FFmpegSession) session).getStatistics()));
        } else {
            this.resultHandler.errorAsync(result, "NOT_FFMPEG_SESSION", "A session is found but it does not have the correct type.");
        }
    }

    protected void ffprobeSession(List<String> list, MethodChannel.Result result) {
        this.resultHandler.successAsync(result, toMap(FFprobeSession.create((String[]) list.toArray(new String[0]), null, null, LogRedirectionStrategy.NEVER_PRINT_LOGS)));
    }

    protected void ffprobeSessionExecute(Integer num, MethodChannel.Result result) {
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
        } else if (session.isFFprobe()) {
            this.asyncExecutorService.submit(new FFprobeSessionExecuteTask((FFprobeSession) session, this.resultHandler, result));
        } else {
            this.resultHandler.errorAsync(result, "NOT_FFPROBE_SESSION", "A session is found but it does not have the correct type.");
        }
    }

    protected void getArch(MethodChannel.Result result) {
        this.resultHandler.successAsync(result, AbiDetect.getAbi());
    }

    protected void getBuildDate(MethodChannel.Result result) {
        this.resultHandler.successAsync(result, FFmpegKitConfig.getBuildDate());
    }

    protected void getExternalLibraries(MethodChannel.Result result) {
        this.resultHandler.successAsync(result, Packages.getExternalLibraries());
    }

    protected void getFFmpegSessions(MethodChannel.Result result) {
        this.resultHandler.successAsync(result, toSessionMapList(FFmpegKit.listSessions()));
    }

    protected void getFFmpegVersion(MethodChannel.Result result) {
        this.resultHandler.successAsync(result, FFmpegKitConfig.getFFmpegVersion());
    }

    protected void getFFprobeSessions(MethodChannel.Result result) {
        this.resultHandler.successAsync(result, toSessionMapList(FFprobeKit.listFFprobeSessions()));
    }

    protected void getLastCompletedSession(MethodChannel.Result result) {
        this.resultHandler.successAsync(result, toMap(FFmpegKitConfig.getLastCompletedSession()));
    }

    protected void getLastSession(MethodChannel.Result result) {
        this.resultHandler.successAsync(result, toMap(FFmpegKitConfig.getLastSession()));
    }

    protected void getLogLevel(MethodChannel.Result result) {
        this.resultHandler.successAsync(result, Integer.valueOf(toInt(FFmpegKitConfig.getLogLevel())));
    }

    protected void getLogRedirectionStrategy(MethodChannel.Result result) {
        this.resultHandler.successAsync(result, Integer.valueOf(toInt(FFmpegKitConfig.getLogRedirectionStrategy())));
    }

    protected void getMediaInformation(Integer num, MethodChannel.Result result) {
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
        } else if (session.isMediaInformation()) {
            this.resultHandler.successAsync(result, toMap(((MediaInformationSession) session).getMediaInformation()));
        } else {
            this.resultHandler.errorAsync(result, "NOT_MEDIA_INFORMATION_SESSION", "A session is found but it does not have the correct type.");
        }
    }

    protected void getMediaInformationSessions(MethodChannel.Result result) {
        this.resultHandler.successAsync(result, toSessionMapList(FFprobeKit.listMediaInformationSessions()));
    }

    protected void getPackageName(MethodChannel.Result result) {
        this.resultHandler.successAsync(result, Packages.getPackageName());
    }

    protected void getPlatform(MethodChannel.Result result) {
        this.resultHandler.successAsync(result, "android");
    }

    protected void getSafParameter(String str, String str2, MethodChannel.Result result) {
        if (this.context != null) {
            Uri parse = Uri.parse(str);
            if (parse == null) {
                Log.w(LIBRARY_NAME, String.format("Cannot getSafParameter using parameters uriString: %s, openMode: %s. Uri string cannot be parsed.", str, str2));
                this.resultHandler.errorAsync(result, "GET_SAF_PARAMETER_FAILED", "Uri string cannot be parsed.");
                return;
            }
            String safParameter = FFmpegKitConfig.getSafParameter(this.context, parse, str2);
            Log.d(LIBRARY_NAME, String.format("getSafParameter using parameters uriString: %s, openMode: %s completed with saf parameter: %s.", str, str2, safParameter));
            this.resultHandler.successAsync(result, safParameter);
            return;
        }
        Log.w(LIBRARY_NAME, String.format("Cannot getSafParameter using parameters uriString: %s, openMode: %s. Context is null.", str, str2));
        this.resultHandler.errorAsync(result, "INVALID_CONTEXT", "Context is null.");
    }

    protected void getSession(Integer num, MethodChannel.Result result) {
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
        } else {
            this.resultHandler.successAsync(result, toMap(session));
        }
    }

    protected void getSessionHistorySize(MethodChannel.Result result) {
        this.resultHandler.successAsync(result, Integer.valueOf(FFmpegKitConfig.getSessionHistorySize()));
    }

    protected void getSessions(MethodChannel.Result result) {
        this.resultHandler.successAsync(result, toSessionMapList(FFmpegKitConfig.getSessions()));
    }

    protected void getSessionsByState(Integer num, MethodChannel.Result result) {
        this.resultHandler.successAsync(result, toSessionMapList(FFmpegKitConfig.getSessionsByState(toSessionState(num.intValue()))));
    }

    protected void ignoreSignal(Integer num, MethodChannel.Result result) {
        int intValue = num.intValue();
        Signal signal = Signal.SIGINT;
        if (intValue != signal.ordinal()) {
            int intValue2 = num.intValue();
            signal = Signal.SIGQUIT;
            if (intValue2 != signal.ordinal()) {
                int intValue3 = num.intValue();
                signal = Signal.SIGPIPE;
                if (intValue3 != signal.ordinal()) {
                    int intValue4 = num.intValue();
                    signal = Signal.SIGTERM;
                    if (intValue4 != signal.ordinal()) {
                        int intValue5 = num.intValue();
                        signal = Signal.SIGXCPU;
                        if (intValue5 != signal.ordinal()) {
                            signal = null;
                        }
                    }
                }
            }
        }
        if (signal != null) {
            FFmpegKitConfig.ignoreSignal(signal);
            this.resultHandler.successAsync(result, (Object) null);
            return;
        }
        this.resultHandler.errorAsync(result, "INVALID_SIGNAL", "Signal value not supported.");
    }

    protected void init(BinaryMessenger binaryMessenger, Context context) {
        registerGlobalCallbacks();
        if (this.methodChannel == null) {
            MethodChannel methodChannel = new MethodChannel(binaryMessenger, METHOD_CHANNEL);
            this.methodChannel = methodChannel;
            methodChannel.setMethodCallHandler(this);
        } else {
            Log.i(LIBRARY_NAME, "FFmpegKitFlutterPlugin method channel was already initialised.");
        }
        if (this.eventChannel == null) {
            EventChannel eventChannel = new EventChannel(binaryMessenger, EVENT_CHANNEL);
            this.eventChannel = eventChannel;
            eventChannel.setStreamHandler(this);
        } else {
            Log.i(LIBRARY_NAME, "FFmpegKitFlutterPlugin event channel was already initialised.");
        }
        this.context = context;
        Log.d(LIBRARY_NAME, String.format("FFmpegKitFlutterPlugin %s initialised with context %s.", this, context));
    }

    protected void isLTSBuild(MethodChannel.Result result) {
        this.resultHandler.successAsync(result, Boolean.valueOf(FFmpegKitConfig.isLTSBuild()));
    }

    protected void mediaInformationJsonParserFrom(String str, MethodChannel.Result result) {
        try {
            this.resultHandler.successAsync(result, toMap(MediaInformationJsonParser.fromWithError(str)));
        } catch (JSONException e10) {
            Log.i(LIBRARY_NAME, "Parsing MediaInformation failed.", e10);
            this.resultHandler.successAsync(result, (Object) null);
        }
    }

    protected void mediaInformationJsonParserFromWithError(String str, MethodChannel.Result result) {
        try {
            this.resultHandler.successAsync(result, toMap(MediaInformationJsonParser.fromWithError(str)));
        } catch (JSONException e10) {
            Log.i(LIBRARY_NAME, "Parsing MediaInformation failed.", e10);
            this.resultHandler.errorAsync(result, "PARSE_FAILED", "Parsing MediaInformation failed with JSON error.");
        }
    }

    protected void mediaInformationSession(List<String> list, MethodChannel.Result result) {
        this.resultHandler.successAsync(result, toMap(MediaInformationSession.create((String[]) list.toArray(new String[0]), null, null)));
    }

    protected void mediaInformationSessionExecute(Integer num, Integer num2, MethodChannel.Result result) {
        int i10;
        Session session = FFmpegKitConfig.getSession(num.longValue());
        if (session == null) {
            this.resultHandler.errorAsync(result, "SESSION_NOT_FOUND", "Session not found.");
        } else if (session.isMediaInformation()) {
            if (isValidPositiveNumber(num2)) {
                i10 = num2.intValue();
            } else {
                i10 = AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT;
            }
            this.asyncExecutorService.submit(new MediaInformationSessionExecuteTask((MediaInformationSession) session, i10, this.resultHandler, result));
        } else {
            this.resultHandler.errorAsync(result, "NOT_MEDIA_INFORMATION_SESSION", "A session is found but it does not have the correct type.");
        }
    }

    protected void messagesInTransmit(Integer num, MethodChannel.Result result) {
        this.resultHandler.successAsync(result, Integer.valueOf(FFmpegKitConfig.messagesInTransmit(num.longValue())));
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i10, int i11, Intent intent) {
        String intent2;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.valueOf(i10);
        objArr[1] = Integer.valueOf(i11);
        String str = null;
        if (intent == null) {
            intent2 = null;
        } else {
            intent2 = intent.toString();
        }
        objArr[2] = intent2;
        Log.d(LIBRARY_NAME, String.format("selectDocument completed with requestCode: %d, resultCode: %d, data: %s.", objArr));
        if (i10 != 10000 && i10 != 20000) {
            Log.i(LIBRARY_NAME, String.format("FFmpegKitFlutterPlugin ignored unsupported activity result for requestCode: %d.", Integer.valueOf(i10)));
            return false;
        }
        if (i11 == -1) {
            if (intent == null) {
                this.resultHandler.successAsync(this.lastInitiatedIntentResult, (Object) null);
            } else {
                Uri data = intent.getData();
                FFmpegKitFlutterMethodResultHandler fFmpegKitFlutterMethodResultHandler = this.resultHandler;
                MethodChannel.Result result = this.lastInitiatedIntentResult;
                if (data != null) {
                    str = data.toString();
                }
                fFmpegKitFlutterMethodResultHandler.successAsync(result, str);
            }
        } else {
            this.resultHandler.errorAsync(this.lastInitiatedIntentResult, "SELECT_CANCELLED", String.valueOf(i11));
        }
        return true;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        Log.d(LIBRARY_NAME, String.format("FFmpegKitFlutterPlugin %s attached to activity %s.", this, activityPluginBinding.getActivity()));
        initActivity(activityPluginBinding.getActivity(), activityPluginBinding);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Log.d(LIBRARY_NAME, String.format("FFmpegKitFlutterPlugin %s attached to engine.", this));
        this.flutterPluginBinding = flutterPluginBinding;
        init(flutterPluginBinding.getBinaryMessenger(), flutterPluginBinding.getApplicationContext());
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onCancel(Object obj) {
        this.eventSink = null;
        Log.d(LIBRARY_NAME, "FFmpegKitFlutterPlugin stopped listening to events.");
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        uninitActivity();
        Log.d(LIBRARY_NAME, "FFmpegKitFlutterPlugin detached from activity.");
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.flutterPluginBinding = null;
        uninit();
        Log.d(LIBRARY_NAME, "FFmpegKitFlutterPlugin detached from engine.");
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onListen(Object obj, EventChannel.EventSink eventSink) {
        this.eventSink = eventSink;
        registerGlobalCallbacks();
        Log.d(LIBRARY_NAME, String.format("FFmpegKitFlutterPlugin %s started listening to events on %s.", this, eventSink));
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        String[] strArr;
        Integer num = (Integer) methodCall.argument("sessionId");
        Integer num2 = (Integer) methodCall.argument(ARGUMENT_WAIT_TIMEOUT);
        List<String> list = (List) methodCall.argument(ARGUMENT_ARGUMENTS);
        String str = (String) methodCall.argument(ARGUMENT_FFPROBE_JSON_OUTPUT);
        Boolean bool = (Boolean) methodCall.argument(ARGUMENT_WRITABLE);
        String str2 = methodCall.method;
        str2.hashCode();
        char c10 = 65535;
        switch (str2.hashCode()) {
            case -2120516313:
                if (str2.equals("getSafParameter")) {
                    c10 = 0;
                    break;
                }
                break;
            case -2103441263:
                if (str2.equals("ffmpegSession")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1912785202:
                if (str2.equals("mediaInformationSession")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1866655603:
                if (str2.equals("isLTSBuild")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1743798884:
                if (str2.equals("setFontDirectory")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1722024362:
                if (str2.equals("abstractSessionGetDuration")) {
                    c10 = 5;
                    break;
                }
                break;
            case -1653941728:
                if (str2.equals("asyncFFmpegSessionExecute")) {
                    c10 = 6;
                    break;
                }
                break;
            case -1411074938:
                if (str2.equals("getBuildDate")) {
                    c10 = 7;
                    break;
                }
                break;
            case -1389627233:
                if (str2.equals("ffmpegSessionGetAllStatistics")) {
                    c10 = '\b';
                    break;
                }
                break;
            case -1367724422:
                if (str2.equals("cancel")) {
                    c10 = '\t';
                    break;
                }
                break;
            case -1273119136:
                if (str2.equals("getSession")) {
                    c10 = '\n';
                    break;
                }
                break;
            case -1236521429:
                if (str2.equals("disableStatistics")) {
                    c10 = 11;
                    break;
                }
                break;
            case -1232550904:
                if (str2.equals("ffmpegSessionGetStatistics")) {
                    c10 = '\f';
                    break;
                }
                break;
            case -1219192049:
                if (str2.equals("abstractSessionGetState")) {
                    c10 = '\r';
                    break;
                }
                break;
            case -1197813889:
                if (str2.equals("abstractSessionGetReturnCode")) {
                    c10 = 14;
                    break;
                }
                break;
            case -1149109195:
                if (str2.equals("getSessionHistorySize")) {
                    c10 = 15;
                    break;
                }
                break;
            case -1066083862:
                if (str2.equals("getLastSession")) {
                    c10 = 16;
                    break;
                }
                break;
            case -1007401687:
                if (str2.equals("enableRedirection")) {
                    c10 = 17;
                    break;
                }
                break;
            case -1004092829:
                if (str2.equals("asyncMediaInformationSessionExecute")) {
                    c10 = 18;
                    break;
                }
                break;
            case -986804548:
                if (str2.equals("cancelSession")) {
                    c10 = 19;
                    break;
                }
                break;
            case -873593625:
                if (str2.equals("getSessionsByState")) {
                    c10 = 20;
                    break;
                }
                break;
            case -811987437:
                if (str2.equals("getSessions")) {
                    c10 = 21;
                    break;
                }
                break;
            case -395332803:
                if (str2.equals("getFFmpegVersion")) {
                    c10 = 22;
                    break;
                }
                break;
            case -393893135:
                if (str2.equals("abstractSessionGetAllLogsAsString")) {
                    c10 = 23;
                    break;
                }
                break;
            case -342383127:
                if (str2.equals("getPlatform")) {
                    c10 = 24;
                    break;
                }
                break;
            case -329192698:
                if (str2.equals("enableStatistics")) {
                    c10 = 25;
                    break;
                }
                break;
            case -309915358:
                if (str2.equals("setLogLevel")) {
                    c10 = 26;
                    break;
                }
                break;
            case -275249448:
                if (str2.equals("getFFmpegSessions")) {
                    c10 = 27;
                    break;
                }
                break;
            case -221335530:
                if (str2.equals("getLogLevel")) {
                    c10 = 28;
                    break;
                }
                break;
            case -134939106:
                if (str2.equals("getMediaInformation")) {
                    c10 = 29;
                    break;
                }
                break;
            case -75679540:
                if (str2.equals("getArch")) {
                    c10 = 30;
                    break;
                }
                break;
            case 39238969:
                if (str2.equals("thereAreAsynchronousMessagesInTransmit")) {
                    c10 = 31;
                    break;
                }
                break;
            case 97596186:
                if (str2.equals("ignoreSignal")) {
                    c10 = ' ';
                    break;
                }
                break;
            case 134287517:
                if (str2.equals("abstractSessionGetFailStackTrace")) {
                    c10 = '!';
                    break;
                }
                break;
            case 179624467:
                if (str2.equals("asyncFFprobeSessionExecute")) {
                    c10 = '\"';
                    break;
                }
                break;
            case 265484683:
                if (str2.equals("closeFFmpegPipe")) {
                    c10 = '#';
                    break;
                }
                break;
            case 268490427:
                if (str2.equals("getPackageName")) {
                    c10 = '$';
                    break;
                }
                break;
            case 616732055:
                if (str2.equals("getFFprobeSessions")) {
                    c10 = '%';
                    break;
                }
                break;
            case 666848778:
                if (str2.equals("clearSessions")) {
                    c10 = '&';
                    break;
                }
                break;
            case 754414928:
                if (str2.equals("registerNewFFmpegPipe")) {
                    c10 = '\'';
                    break;
                }
                break;
            case 898447750:
                if (str2.equals("ffprobeSession")) {
                    c10 = '(';
                    break;
                }
                break;
            case 930178724:
                if (str2.equals("disableRedirection")) {
                    c10 = ')';
                    break;
                }
                break;
            case 1038283172:
                if (str2.equals("ffmpegSessionExecute")) {
                    c10 = '*';
                    break;
                }
                break;
            case 1068836721:
                if (str2.equals("abstractSessionGetLogs")) {
                    c10 = '+';
                    break;
                }
                break;
            case 1120963409:
                if (str2.equals("getLogRedirectionStrategy")) {
                    c10 = ',';
                    break;
                }
                break;
            case 1172412742:
                if (str2.equals("abstractSessionGetEndTime")) {
                    c10 = '-';
                    break;
                }
                break;
            case 1215775213:
                if (str2.equals("setEnvironmentVariable")) {
                    c10 = '.';
                    break;
                }
                break;
            case 1294348535:
                if (str2.equals("getLastCompletedSession")) {
                    c10 = '/';
                    break;
                }
                break;
            case 1353099447:
                if (str2.equals("disableLogs")) {
                    c10 = '0';
                    break;
                }
                break;
            case 1387101761:
                if (str2.equals("setSessionHistorySize")) {
                    c10 = '1';
                    break;
                }
                break;
            case 1435234184:
                if (str2.equals("writeToPipe")) {
                    c10 = '2';
                    break;
                }
                break;
            case 1453176007:
                if (str2.equals("mediaInformationSessionExecute")) {
                    c10 = '3';
                    break;
                }
                break;
            case 1466586152:
                if (str2.equals("setFontconfigConfigurationPath")) {
                    c10 = '4';
                    break;
                }
                break;
            case 1555761752:
                if (str2.equals("getExternalLibraries")) {
                    c10 = '5';
                    break;
                }
                break;
            case 1566113121:
                if (str2.equals("messagesInTransmit")) {
                    c10 = '6';
                    break;
                }
                break;
            case 1639331035:
                if (str2.equals("getMediaInformationSessions")) {
                    c10 = '7';
                    break;
                }
                break;
            case 1714653353:
                if (str2.equals("mediaInformationJsonParserFromWithError")) {
                    c10 = '8';
                    break;
                }
                break;
            case 1755559002:
                if (str2.equals("setFontDirectoryList")) {
                    c10 = '9';
                    break;
                }
                break;
            case 1814015543:
                if (str2.equals("selectDocument")) {
                    c10 = ':';
                    break;
                }
                break;
            case 1867262446:
                if (str2.equals("abstractSessionGetAllLogs")) {
                    c10 = ';';
                    break;
                }
                break;
            case 1893000658:
                if (str2.equals("enableLogs")) {
                    c10 = '<';
                    break;
                }
                break;
            case 1945437241:
                if (str2.equals("mediaInformationJsonParserFrom")) {
                    c10 = '=';
                    break;
                }
                break;
            case 1964255069:
                if (str2.equals("setLogRedirectionStrategy")) {
                    c10 = '>';
                    break;
                }
                break;
            case 2034217743:
                if (str2.equals("ffprobeSessionExecute")) {
                    c10 = '?';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                String str3 = (String) methodCall.argument("uri");
                String str4 = (String) methodCall.argument("openMode");
                if (str3 != null && str4 != null) {
                    getSafParameter(str3, str4, result);
                    return;
                } else if (str3 != null) {
                    this.resultHandler.errorAsync(result, "INVALID_OPEN_MODE", "Invalid openMode value.");
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_URI", "Invalid uri value.");
                    return;
                }
            case 1:
                if (list != null) {
                    ffmpegSession(list, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_ARGUMENTS", "Invalid arguments array.");
                    return;
                }
            case 2:
                if (list != null) {
                    mediaInformationSession(list, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_ARGUMENTS", "Invalid arguments array.");
                    return;
                }
            case 3:
                isLTSBuild(result);
                return;
            case 4:
                String str5 = (String) methodCall.argument("fontDirectory");
                Map<String, String> map = (Map) methodCall.argument("fontNameMap");
                if (str5 != null) {
                    setFontDirectory(str5, map, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_FONT_DIRECTORY", "Invalid font directory.");
                    return;
                }
            case 5:
                if (num != null) {
                    abstractSessionGetDuration(num, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case 6:
                if (num != null) {
                    asyncFFmpegSessionExecute(num, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case 7:
                getBuildDate(result);
                return;
            case '\b':
                if (num != null) {
                    ffmpegSessionGetAllStatistics(num, num2, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case '\t':
                cancel(result);
                return;
            case '\n':
                if (num != null) {
                    getSession(num, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case 11:
                disableStatistics(result);
                return;
            case '\f':
                if (num != null) {
                    ffmpegSessionGetStatistics(num, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case '\r':
                if (num != null) {
                    abstractSessionGetState(num, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case 14:
                if (num != null) {
                    abstractSessionGetReturnCode(num, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case 15:
                getSessionHistorySize(result);
                return;
            case 16:
                getLastSession(result);
                return;
            case 17:
                enableRedirection(result);
                return;
            case 18:
                if (num != null) {
                    asyncMediaInformationSessionExecute(num, num2, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case C1415p9.C /* 19 */:
                if (num != null) {
                    cancelSession(num, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case 20:
                Integer num3 = (Integer) methodCall.argument("state");
                if (num3 != null) {
                    getSessionsByState(num3, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION_STATE", "Invalid session state value.");
                    return;
                }
            case 21:
                getSessions(result);
                return;
            case Build.API_LEVELS.API_22 /* 22 */:
                getFFmpegVersion(result);
                return;
            case Build.API_LEVELS.API_23 /* 23 */:
                if (num != null) {
                    abstractSessionGetAllLogsAsString(num, num2, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case Build.API_LEVELS.API_24 /* 24 */:
                getPlatform(result);
                return;
            case 25:
                enableStatistics(result);
                return;
            case 26:
                Integer num4 = (Integer) methodCall.argument(KEY_LOG_LEVEL);
                if (num4 != null) {
                    setLogLevel(num4, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_LEVEL", "Invalid level value.");
                    return;
                }
            case 27:
                getFFmpegSessions(result);
                return;
            case Build.API_LEVELS.API_28 /* 28 */:
                getLogLevel(result);
                return;
            case 29:
                if (num != null) {
                    getMediaInformation(num, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case Build.API_LEVELS.API_30 /* 30 */:
                getArch(result);
                return;
            case Build.API_LEVELS.API_31 /* 31 */:
                if (num != null) {
                    abstractSessionThereAreAsynchronousMessagesInTransmit(num, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case Build.API_LEVELS.API_32 /* 32 */:
                Integer num5 = (Integer) methodCall.argument("signal");
                if (num5 != null) {
                    ignoreSignal(num5, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SIGNAL", "Invalid signal value.");
                    return;
                }
            case Build.API_LEVELS.API_33 /* 33 */:
                if (num != null) {
                    abstractSessionGetFailStackTrace(num, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case Build.API_LEVELS.API_34 /* 34 */:
                if (num != null) {
                    asyncFFprobeSessionExecute(num, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case '#':
                String str6 = (String) methodCall.argument("ffmpegPipePath");
                if (str6 != null) {
                    closeFFmpegPipe(str6, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_PIPE_PATH", "Invalid ffmpeg pipe path.");
                    return;
                }
            case Build.API_LEVELS.API_36 /* 36 */:
                getPackageName(result);
                return;
            case '%':
                getFFprobeSessions(result);
                return;
            case C1415p9.K /* 38 */:
                clearSessions(result);
                return;
            case '\'':
                registerNewFFmpegPipe(result);
                return;
            case C1415p9.L /* 40 */:
                if (list != null) {
                    ffprobeSession(list, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_ARGUMENTS", "Invalid arguments array.");
                    return;
                }
            case ')':
                disableRedirection(result);
                return;
            case C1415p9.M /* 42 */:
                if (num != null) {
                    ffmpegSessionExecute(num, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case '+':
                if (num != null) {
                    abstractSessionGetLogs(num, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case ',':
                getLogRedirectionStrategy(result);
                return;
            case '-':
                if (num != null) {
                    abstractSessionGetEndTime(num, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case '.':
                String str7 = (String) methodCall.argument("variableName");
                String str8 = (String) methodCall.argument("variableValue");
                if (str7 != null && str8 != null) {
                    setEnvironmentVariable(str7, str8, result);
                    return;
                } else if (str8 != null) {
                    this.resultHandler.errorAsync(result, "INVALID_NAME", "Invalid environment variable name.");
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_VALUE", "Invalid environment variable value.");
                    return;
                }
            case '/':
                getLastCompletedSession(result);
                return;
            case '0':
                disableLogs(result);
                return;
            case '1':
                Integer num6 = (Integer) methodCall.argument("sessionHistorySize");
                if (num6 != null) {
                    setSessionHistorySize(num6, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SIZE", "Invalid session history size value.");
                    return;
                }
            case '2':
                String str9 = (String) methodCall.argument("input");
                String str10 = (String) methodCall.argument("pipe");
                if (str9 != null && str10 != null) {
                    writeToPipe(str9, str10, result);
                    return;
                } else if (str10 != null) {
                    this.resultHandler.errorAsync(result, "INVALID_INPUT", "Invalid input value.");
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_PIPE", "Invalid pipe value.");
                    return;
                }
            case '3':
                if (num != null) {
                    mediaInformationSessionExecute(num, num2, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case '4':
                String str11 = (String) methodCall.argument("path");
                if (str11 != null) {
                    setFontconfigConfigurationPath(str11, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_PATH", "Invalid path.");
                    return;
                }
            case '5':
                getExternalLibraries(result);
                return;
            case '6':
                if (num != null) {
                    messagesInTransmit(num, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case '7':
                getMediaInformationSessions(result);
                return;
            case '8':
                if (str != null) {
                    mediaInformationJsonParserFromWithError(str, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_FFPROBE_JSON_OUTPUT", "Invalid ffprobe json output.");
                    return;
                }
            case '9':
                List<String> list2 = (List) methodCall.argument("fontDirectoryList");
                Map<String, String> map2 = (Map) methodCall.argument("fontNameMap");
                if (list2 != null) {
                    setFontDirectoryList(list2, map2, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_FONT_DIRECTORY_LIST", "Invalid font directory list.");
                    return;
                }
            case ':':
                String str12 = (String) methodCall.argument("title");
                String str13 = (String) methodCall.argument("type");
                List list3 = (List) methodCall.argument("extraTypes");
                if (list3 != null) {
                    strArr = (String[]) list3.toArray(new String[0]);
                } else {
                    strArr = null;
                }
                String[] strArr2 = strArr;
                if (bool != null) {
                    selectDocument(bool, str12, str13, strArr2, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_WRITABLE", "Invalid writable value.");
                    return;
                }
            case ';':
                if (num != null) {
                    abstractSessionGetAllLogs(num, num2, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                enableLogs(result);
                return;
            case '=':
                if (str != null) {
                    mediaInformationJsonParserFrom(str, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_FFPROBE_JSON_OUTPUT", "Invalid ffprobe json output.");
                    return;
                }
            case '>':
                Integer num7 = (Integer) methodCall.argument("strategy");
                if (num7 != null) {
                    setLogRedirectionStrategy(num7, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_LOG_REDIRECTION_STRATEGY", "Invalid log redirection strategy value.");
                    return;
                }
            case '?':
                if (num != null) {
                    ffprobeSessionExecute(num, result);
                    return;
                } else {
                    this.resultHandler.errorAsync(result, "INVALID_SESSION", "Invalid session id.");
                    return;
                }
            default:
                this.resultHandler.notImplementedAsync(result);
                return;
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        onAttachedToActivity(activityPluginBinding);
    }

    protected void registerGlobalCallbacks() {
        FFmpegKitConfig.enableFFmpegSessionCompleteCallback(new FFmpegSessionCompleteCallback() { // from class: com.arthenica.ffmpegkit.flutter.e
            @Override // com.arthenica.ffmpegkit.FFmpegSessionCompleteCallback
            public final void apply(FFmpegSession fFmpegSession) {
                FFmpegKitFlutterPlugin.this.emitSession(fFmpegSession);
            }
        });
        FFmpegKitConfig.enableFFprobeSessionCompleteCallback(new FFprobeSessionCompleteCallback() { // from class: com.arthenica.ffmpegkit.flutter.f
            @Override // com.arthenica.ffmpegkit.FFprobeSessionCompleteCallback
            public final void apply(FFprobeSession fFprobeSession) {
                FFmpegKitFlutterPlugin.this.emitSession(fFprobeSession);
            }
        });
        FFmpegKitConfig.enableMediaInformationSessionCompleteCallback(new MediaInformationSessionCompleteCallback() { // from class: com.arthenica.ffmpegkit.flutter.g
            @Override // com.arthenica.ffmpegkit.MediaInformationSessionCompleteCallback
            public final void apply(MediaInformationSession mediaInformationSession) {
                FFmpegKitFlutterPlugin.this.emitSession(mediaInformationSession);
            }
        });
        FFmpegKitConfig.enableLogCallback(new LogCallback() { // from class: com.arthenica.ffmpegkit.flutter.h
            @Override // com.arthenica.ffmpegkit.LogCallback
            public final void apply(com.arthenica.ffmpegkit.Log log) {
                FFmpegKitFlutterPlugin.this.lambda$registerGlobalCallbacks$0(log);
            }
        });
        FFmpegKitConfig.enableStatisticsCallback(new StatisticsCallback() { // from class: com.arthenica.ffmpegkit.flutter.i
            @Override // com.arthenica.ffmpegkit.StatisticsCallback
            public final void apply(Statistics statistics) {
                FFmpegKitFlutterPlugin.this.lambda$registerGlobalCallbacks$1(statistics);
            }
        });
    }

    protected void registerNewFFmpegPipe(MethodChannel.Result result) {
        Context context = this.context;
        if (context != null) {
            this.resultHandler.successAsync(result, FFmpegKitConfig.registerNewFFmpegPipe(context));
            return;
        }
        Log.w(LIBRARY_NAME, "Cannot registerNewFFmpegPipe. Context is null.");
        this.resultHandler.errorAsync(result, "INVALID_CONTEXT", "Context is null.");
    }

    protected void selectDocument(Boolean bool, String str, String str2, String[] strArr, MethodChannel.Result result) {
        Intent intent;
        int i10;
        if (bool.booleanValue()) {
            intent = new Intent("android.intent.action.CREATE_DOCUMENT");
            intent.addFlags(3);
        } else {
            intent = new Intent("android.intent.action.GET_CONTENT");
            intent.addCategory("android.intent.category.OPENABLE");
            intent.addFlags(1);
        }
        if (str2 != null) {
            intent.setType(str2);
        } else {
            intent.setType("*/*");
        }
        if (str != null) {
            intent.putExtra("android.intent.extra.TITLE", str);
        }
        if (strArr != null) {
            intent.putExtra("android.intent.extra.MIME_TYPES", strArr);
        }
        String str3 = null;
        if (this.context != null) {
            Activity activity = this.activity;
            if (activity != null) {
                try {
                    this.lastInitiatedIntentResult = result;
                    if (bool.booleanValue()) {
                        i10 = WRITABLE_REQUEST_CODE;
                    } else {
                        i10 = 10000;
                    }
                    activity.startActivityForResult(intent, i10);
                    return;
                } catch (Exception e10) {
                    Object[] objArr = new Object[4];
                    objArr[0] = bool;
                    objArr[1] = str2;
                    objArr[2] = str;
                    if (strArr != null) {
                        str3 = Arrays.toString(strArr);
                    }
                    objArr[3] = str3;
                    Log.i(LIBRARY_NAME, String.format("Failed to selectDocument using parameters writable: %s, type: %s, title: %s and extra types: %s!", objArr), e10);
                    this.resultHandler.errorAsync(result, "SELECT_FAILED", e10.getMessage());
                    return;
                }
            }
            Object[] objArr2 = new Object[4];
            objArr2[0] = bool;
            objArr2[1] = str2;
            objArr2[2] = str;
            if (strArr != null) {
                str3 = Arrays.toString(strArr);
            }
            objArr2[3] = str3;
            Log.w(LIBRARY_NAME, String.format("Cannot selectDocument using parameters writable: %s, type: %s, title: %s and extra types: %s. Activity is null.", objArr2));
            this.resultHandler.errorAsync(result, "INVALID_ACTIVITY", "Activity is null.");
            return;
        }
        Object[] objArr3 = new Object[4];
        objArr3[0] = bool;
        objArr3[1] = str2;
        objArr3[2] = str;
        if (strArr != null) {
            str3 = Arrays.toString(strArr);
        }
        objArr3[3] = str3;
        Log.w(LIBRARY_NAME, String.format("Cannot selectDocument using parameters writable: %s, type: %s, title: %s and extra types: %s. Context is null.", objArr3));
        this.resultHandler.errorAsync(result, "INVALID_CONTEXT", "Context is null.");
    }

    protected void setEnvironmentVariable(String str, String str2, MethodChannel.Result result) {
        FFmpegKitConfig.setEnvironmentVariable(str, str2);
        this.resultHandler.successAsync(result, (Object) null);
    }

    protected void setFontDirectory(String str, Map<String, String> map, MethodChannel.Result result) {
        Context context = this.context;
        if (context != null) {
            FFmpegKitConfig.setFontDirectory(context, str, map);
            this.resultHandler.successAsync(result, (Object) null);
            return;
        }
        Log.w(LIBRARY_NAME, "Cannot setFontDirectory. Context is null.");
        this.resultHandler.errorAsync(result, "INVALID_CONTEXT", "Context is null.");
    }

    protected void setFontDirectoryList(List<String> list, Map<String, String> map, MethodChannel.Result result) {
        Context context = this.context;
        if (context != null) {
            FFmpegKitConfig.setFontDirectoryList(context, list, map);
            this.resultHandler.successAsync(result, (Object) null);
            return;
        }
        Log.w(LIBRARY_NAME, "Cannot setFontDirectoryList. Context is null.");
        this.resultHandler.errorAsync(result, "INVALID_CONTEXT", "Context is null.");
    }

    protected void setFontconfigConfigurationPath(String str, MethodChannel.Result result) {
        FFmpegKitConfig.setFontconfigConfigurationPath(str);
        this.resultHandler.successAsync(result, (Object) null);
    }

    protected void setLogLevel(Integer num, MethodChannel.Result result) {
        FFmpegKitConfig.setLogLevel(Level.from(num.intValue()));
        this.resultHandler.successAsync(result, (Object) null);
    }

    protected void setLogRedirectionStrategy(Integer num, MethodChannel.Result result) {
        FFmpegKitConfig.setLogRedirectionStrategy(toLogRedirectionStrategy(num.intValue()));
        this.resultHandler.successAsync(result, (Object) null);
    }

    protected void setSessionHistorySize(Integer num, MethodChannel.Result result) {
        FFmpegKitConfig.setSessionHistorySize(num.intValue());
        this.resultHandler.successAsync(result, (Object) null);
    }

    protected void uninit() {
        uninitMethodChannel();
        uninitEventChannel();
        this.context = null;
        Log.d(LIBRARY_NAME, "FFmpegKitFlutterPlugin uninitialized.");
    }

    protected void uninitEventChannel() {
        EventChannel eventChannel = this.eventChannel;
        if (eventChannel == null) {
            Log.i(LIBRARY_NAME, "FFmpegKitFlutterPlugin event channel was already uninitialised.");
            return;
        }
        eventChannel.setStreamHandler(null);
        this.eventChannel = null;
    }

    protected void uninitMethodChannel() {
        MethodChannel methodChannel = this.methodChannel;
        if (methodChannel == null) {
            Log.i(LIBRARY_NAME, "FFmpegKitFlutterPlugin method channel was already uninitialised.");
            return;
        }
        methodChannel.setMethodCallHandler(null);
        this.methodChannel = null;
    }

    protected void writeToPipe(String str, String str2, MethodChannel.Result result) {
        this.asyncExecutorService.submit(new WriteToPipeTask(str, str2, this.resultHandler, result));
    }

    protected static int toInt(LogRedirectionStrategy logRedirectionStrategy) {
        int i10 = AnonymousClass1.$SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy[logRedirectionStrategy.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return i10 != 4 ? 4 : 3;
                }
                return 2;
            }
            return 1;
        }
        return 0;
    }

    protected void disableLogs() {
        this.logsEnabled.compareAndSet(true, false);
    }

    protected void disableStatistics() {
        this.statisticsEnabled.compareAndSet(true, false);
    }

    protected void enableLogs() {
        this.logsEnabled.compareAndSet(false, true);
    }

    protected void enableStatistics() {
        this.statisticsEnabled.compareAndSet(false, true);
    }

    protected static Map<String, Object> toMap(com.arthenica.ffmpegkit.Log log) {
        HashMap hashMap = new HashMap();
        hashMap.put("sessionId", Long.valueOf(log.getSessionId()));
        hashMap.put(KEY_LOG_LEVEL, Integer.valueOf(toInt(log.getLevel())));
        hashMap.put("message", log.getMessage());
        return hashMap;
    }

    protected static Map<String, Object> toMap(Statistics statistics) {
        HashMap hashMap = new HashMap();
        if (statistics != null) {
            hashMap.put("sessionId", Long.valueOf(statistics.getSessionId()));
            hashMap.put(KEY_STATISTICS_VIDEO_FRAME_NUMBER, Integer.valueOf(statistics.getVideoFrameNumber()));
            hashMap.put(KEY_STATISTICS_VIDEO_FPS, Float.valueOf(statistics.getVideoFps()));
            hashMap.put(KEY_STATISTICS_VIDEO_QUALITY, Float.valueOf(statistics.getVideoQuality()));
            hashMap.put("size", Integer.valueOf((int) (statistics.getSize() < 2147483647L ? statistics.getSize() : statistics.getSize() % 2147483647L)));
            hashMap.put(KEY_STATISTICS_TIME, Double.valueOf(statistics.getTime()));
            hashMap.put(KEY_STATISTICS_BITRATE, Double.valueOf(statistics.getBitrate()));
            hashMap.put(KEY_STATISTICS_SPEED, Double.valueOf(statistics.getSpeed()));
        }
        return hashMap;
    }

    protected static Map<String, Object> toMap(MediaInformation mediaInformation) {
        JSONObject allProperties;
        if (mediaInformation != null) {
            HashMap hashMap = new HashMap();
            return (mediaInformation.getAllProperties() == null || (allProperties = mediaInformation.getAllProperties()) == null) ? hashMap : toMap(allProperties);
        }
        return null;
    }

    protected static Map<String, Object> toMap(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object opt = jSONObject.opt(next);
                if (opt != null) {
                    if (opt instanceof JSONArray) {
                        opt = toList((JSONArray) opt);
                    } else if (opt instanceof JSONObject) {
                        opt = toMap((JSONObject) opt);
                    }
                    hashMap.put(next, opt);
                }
            }
        }
        return hashMap;
    }
}
