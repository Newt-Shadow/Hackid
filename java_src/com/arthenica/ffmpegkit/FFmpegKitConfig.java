package com.arthenica.ffmpegkit;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.SparseArray;
import com.arthenica.smartexception.java.Exceptions;
import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.tika.metadata.OfficeOpenXMLExtended;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes.dex */
public class FFmpegKitConfig {
    static final String FFMPEG_KIT_NAMED_PIPE_PREFIX = "fk_pipe_";
    static final String TAG = "ffmpeg-kit";
    private static Level activeLogLevel;
    private static int asyncConcurrencyLimit;
    private static ExecutorService asyncExecutorService;
    private static FFmpegSessionCompleteCallback globalFFmpegSessionCompleteCallback;
    private static FFprobeSessionCompleteCallback globalFFprobeSessionCompleteCallback;
    private static LogCallback globalLogCallback;
    private static LogRedirectionStrategy globalLogRedirectionStrategy;
    private static MediaInformationSessionCompleteCallback globalMediaInformationSessionCompleteCallback;
    private static StatisticsCallback globalStatisticsCallback;
    private static final SparseArray<SAFProtocolUrl> safFileDescriptorMap;
    private static final SparseArray<SAFProtocolUrl> safIdMap;
    private static final List<Session> sessionHistoryList;
    private static final Object sessionHistoryLock;
    private static final Map<Long, Session> sessionHistoryMap;
    private static int sessionHistorySize;
    private static final AtomicInteger uniqueIdGenerator;

    /* renamed from: com.arthenica.ffmpegkit.FFmpegKitConfig$2  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$arthenica$ffmpegkit$Level;
        static final /* synthetic */ int[] $SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy;

        static {
            int[] iArr = new int[Level.values().length];
            $SwitchMap$com$arthenica$ffmpegkit$Level = iArr;
            try {
                iArr[Level.AV_LOG_QUIET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$Level[Level.AV_LOG_TRACE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$Level[Level.AV_LOG_DEBUG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$Level[Level.AV_LOG_INFO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$Level[Level.AV_LOG_WARNING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$Level[Level.AV_LOG_ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$Level[Level.AV_LOG_FATAL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$Level[Level.AV_LOG_PANIC.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$Level[Level.AV_LOG_STDERR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$Level[Level.AV_LOG_VERBOSE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            int[] iArr2 = new int[LogRedirectionStrategy.values().length];
            $SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy = iArr2;
            try {
                iArr2[LogRedirectionStrategy.NEVER_PRINT_LOGS.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy[LogRedirectionStrategy.PRINT_LOGS_WHEN_GLOBAL_CALLBACK_NOT_DEFINED.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy[LogRedirectionStrategy.PRINT_LOGS_WHEN_SESSION_CALLBACK_NOT_DEFINED.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy[LogRedirectionStrategy.PRINT_LOGS_WHEN_NO_CALLBACKS_DEFINED.ordinal()] = 4;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy[LogRedirectionStrategy.ALWAYS_PRINT_LOGS.ordinal()] = 5;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SAFProtocolUrl {
        private final ContentResolver contentResolver;
        private final String openMode;
        private ParcelFileDescriptor parcelFileDescriptor;
        private final Integer safId;
        private final Uri uri;

        public SAFProtocolUrl(Integer num, Uri uri, String str, ContentResolver contentResolver) {
            this.safId = num;
            this.uri = uri;
            this.openMode = str;
            this.contentResolver = contentResolver;
        }

        public ContentResolver getContentResolver() {
            return this.contentResolver;
        }

        public String getOpenMode() {
            return this.openMode;
        }

        public ParcelFileDescriptor getParcelFileDescriptor() {
            return this.parcelFileDescriptor;
        }

        public Integer getSafId() {
            return this.safId;
        }

        public Uri getUri() {
            return this.uri;
        }

        public void setParcelFileDescriptor(ParcelFileDescriptor parcelFileDescriptor) {
            this.parcelFileDescriptor = parcelFileDescriptor;
        }
    }

    static {
        Exceptions.registerRootPackage("com.arthenica");
        android.util.Log.i(TAG, "Loading ffmpeg-kit.");
        NativeLoader.loadFFmpegKit(NativeLoader.loadFFmpeg());
        uniqueIdGenerator = new AtomicInteger(1);
        activeLogLevel = Level.from(NativeLoader.loadLogLevel());
        asyncConcurrencyLimit = 10;
        asyncExecutorService = Executors.newFixedThreadPool(10);
        sessionHistorySize = 10;
        sessionHistoryMap = new LinkedHashMap<Long, Session>() { // from class: com.arthenica.ffmpegkit.FFmpegKitConfig.1
            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<Long, Session> entry) {
                if (size() > FFmpegKitConfig.sessionHistorySize) {
                    return true;
                }
                return false;
            }
        };
        sessionHistoryList = new LinkedList();
        sessionHistoryLock = new Object();
        globalLogCallback = null;
        globalStatisticsCallback = null;
        globalFFmpegSessionCompleteCallback = null;
        globalFFprobeSessionCompleteCallback = null;
        globalMediaInformationSessionCompleteCallback = null;
        safIdMap = new SparseArray<>();
        safFileDescriptorMap = new SparseArray<>();
        globalLogRedirectionStrategy = LogRedirectionStrategy.PRINT_LOGS_WHEN_NO_CALLBACKS_DEFINED;
        android.util.Log.i(TAG, String.format("Loaded ffmpeg-kit-%s-%s-%s-%s.", NativeLoader.loadPackageName(), NativeLoader.loadAbi(), NativeLoader.loadVersion(), NativeLoader.loadBuildDate()));
    }

    private FFmpegKitConfig() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addSession(Session session) {
        synchronized (sessionHistoryLock) {
            Map<Long, Session> map = sessionHistoryMap;
            if (!map.containsKey(Long.valueOf(session.getSessionId()))) {
                map.put(Long.valueOf(session.getSessionId()), session);
                sessionHistoryList.add(session);
                deleteExpiredSessions();
            }
        }
    }

    public static String argumentsToString(String[] strArr) {
        if (strArr == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (i10 > 0) {
                sb2.append(StringUtils.SPACE);
            }
            sb2.append(strArr[i10]);
        }
        return sb2.toString();
    }

    public static void asyncFFmpegExecute(FFmpegSession fFmpegSession) {
        fFmpegSession.setFuture(asyncExecutorService.submit(new AsyncFFmpegExecuteTask(fFmpegSession)));
    }

    public static void asyncFFprobeExecute(FFprobeSession fFprobeSession) {
        fFprobeSession.setFuture(asyncExecutorService.submit(new AsyncFFprobeExecuteTask(fFprobeSession)));
    }

    public static void asyncGetMediaInformationExecute(MediaInformationSession mediaInformationSession, int i10) {
        mediaInformationSession.setFuture(asyncExecutorService.submit(new AsyncGetMediaInformationTask(mediaInformationSession, Integer.valueOf(i10))));
    }

    public static void clearSessions() {
        synchronized (sessionHistoryLock) {
            sessionHistoryList.clear();
            sessionHistoryMap.clear();
        }
    }

    public static void closeFFmpegPipe(String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    private static void deleteExpiredSessions() {
        while (true) {
            List<Session> list = sessionHistoryList;
            if (list.size() > sessionHistorySize) {
                try {
                    Session remove = list.remove(0);
                    if (remove != null) {
                        sessionHistoryMap.remove(Long.valueOf(remove.getSessionId()));
                    }
                } catch (IndexOutOfBoundsException unused) {
                }
            } else {
                return;
            }
        }
    }

    private static native void disableNativeRedirection();

    public static void disableRedirection() {
        disableNativeRedirection();
    }

    public static void enableFFmpegSessionCompleteCallback(FFmpegSessionCompleteCallback fFmpegSessionCompleteCallback) {
        globalFFmpegSessionCompleteCallback = fFmpegSessionCompleteCallback;
    }

    public static void enableFFprobeSessionCompleteCallback(FFprobeSessionCompleteCallback fFprobeSessionCompleteCallback) {
        globalFFprobeSessionCompleteCallback = fFprobeSessionCompleteCallback;
    }

    public static void enableLogCallback(LogCallback logCallback) {
        globalLogCallback = logCallback;
    }

    public static void enableMediaInformationSessionCompleteCallback(MediaInformationSessionCompleteCallback mediaInformationSessionCompleteCallback) {
        globalMediaInformationSessionCompleteCallback = mediaInformationSessionCompleteCallback;
    }

    private static native void enableNativeRedirection();

    public static void enableRedirection() {
        enableNativeRedirection();
    }

    public static void enableStatisticsCallback(StatisticsCallback statisticsCallback) {
        globalStatisticsCallback = statisticsCallback;
    }

    static String extractExtensionFromSafDisplayName(String str) {
        String str2;
        if (str.lastIndexOf(".") >= 0) {
            str2 = str.substring(str.lastIndexOf("."));
        } else {
            str2 = str;
        }
        try {
            return new StringTokenizer(str2, " .").nextToken();
        } catch (Exception e10) {
            android.util.Log.w(TAG, String.format("Failed to extract extension from saf display name: %s.%s", str, Exceptions.getStackTraceString(e10)));
            return "raw";
        }
    }

    public static void ffmpegExecute(FFmpegSession fFmpegSession) {
        fFmpegSession.startRunning();
        try {
            fFmpegSession.complete(new ReturnCode(nativeFFmpegExecute(fFmpegSession.getSessionId(), fFmpegSession.getArguments())));
        } catch (Exception e10) {
            fFmpegSession.fail(e10);
            android.util.Log.w(TAG, String.format("FFmpeg execute failed: %s.%s", argumentsToString(fFmpegSession.getArguments()), Exceptions.getStackTraceString(e10)));
        }
    }

    public static void ffprobeExecute(FFprobeSession fFprobeSession) {
        fFprobeSession.startRunning();
        try {
            fFprobeSession.complete(new ReturnCode(nativeFFprobeExecute(fFprobeSession.getSessionId(), fFprobeSession.getArguments())));
        } catch (Exception e10) {
            fFprobeSession.fail(e10);
            android.util.Log.w(TAG, String.format("FFprobe execute failed: %s.%s", argumentsToString(fFprobeSession.getArguments()), Exceptions.getStackTraceString(e10)));
        }
    }

    public static int getAsyncConcurrencyLimit() {
        return asyncConcurrencyLimit;
    }

    public static String getBuildDate() {
        return getNativeBuildDate();
    }

    public static FFmpegSessionCompleteCallback getFFmpegSessionCompleteCallback() {
        return globalFFmpegSessionCompleteCallback;
    }

    public static List<FFmpegSession> getFFmpegSessions() {
        LinkedList linkedList = new LinkedList();
        synchronized (sessionHistoryLock) {
            for (Session session : sessionHistoryList) {
                if (session.isFFmpeg()) {
                    linkedList.add((FFmpegSession) session);
                }
            }
        }
        return linkedList;
    }

    public static String getFFmpegVersion() {
        return getNativeFFmpegVersion();
    }

    public static FFprobeSessionCompleteCallback getFFprobeSessionCompleteCallback() {
        return globalFFprobeSessionCompleteCallback;
    }

    public static List<FFprobeSession> getFFprobeSessions() {
        LinkedList linkedList = new LinkedList();
        synchronized (sessionHistoryLock) {
            for (Session session : sessionHistoryList) {
                if (session.isFFprobe()) {
                    linkedList.add((FFprobeSession) session);
                }
            }
        }
        return linkedList;
    }

    public static Session getLastCompletedSession() {
        synchronized (sessionHistoryLock) {
            for (int size = sessionHistoryList.size() - 1; size >= 0; size--) {
                Session session = sessionHistoryList.get(size);
                if (session.getState() == SessionState.COMPLETED) {
                    return session;
                }
            }
            return null;
        }
    }

    public static Session getLastSession() {
        synchronized (sessionHistoryLock) {
            List<Session> list = sessionHistoryList;
            if (list.size() > 0) {
                return list.get(list.size() - 1);
            }
            return null;
        }
    }

    public static Level getLogLevel() {
        return activeLogLevel;
    }

    public static LogRedirectionStrategy getLogRedirectionStrategy() {
        return globalLogRedirectionStrategy;
    }

    public static void getMediaInformationExecute(MediaInformationSession mediaInformationSession, int i10) {
        mediaInformationSession.startRunning();
        try {
            ReturnCode returnCode = new ReturnCode(nativeFFprobeExecute(mediaInformationSession.getSessionId(), mediaInformationSession.getArguments()));
            mediaInformationSession.complete(returnCode);
            if (returnCode.isValueSuccess()) {
                List<Log> allLogs = mediaInformationSession.getAllLogs(i10);
                StringBuilder sb2 = new StringBuilder();
                int size = allLogs.size();
                for (int i11 = 0; i11 < size; i11++) {
                    Log log = allLogs.get(i11);
                    if (log.getLevel() == Level.AV_LOG_STDERR) {
                        sb2.append(log.getMessage());
                    }
                }
                mediaInformationSession.setMediaInformation(MediaInformationJsonParser.fromWithError(sb2.toString()));
            }
        } catch (Exception e10) {
            mediaInformationSession.fail(e10);
            android.util.Log.w(TAG, String.format("Get media information execute failed: %s.%s", argumentsToString(mediaInformationSession.getArguments()), Exceptions.getStackTraceString(e10)));
        }
    }

    public static MediaInformationSessionCompleteCallback getMediaInformationSessionCompleteCallback() {
        return globalMediaInformationSessionCompleteCallback;
    }

    public static List<MediaInformationSession> getMediaInformationSessions() {
        LinkedList linkedList = new LinkedList();
        synchronized (sessionHistoryLock) {
            for (Session session : sessionHistoryList) {
                if (session.isMediaInformation()) {
                    linkedList.add((MediaInformationSession) session);
                }
            }
        }
        return linkedList;
    }

    private static native String getNativeBuildDate();

    private static native String getNativeFFmpegVersion();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int getNativeLogLevel();

    private static native String getNativeVersion();

    public static String getSafParameter(Context context, Uri uri, String str) {
        String str2;
        try {
            Cursor query = context.getContentResolver().query(uri, null, null, null, null);
            if (query != null && query.moveToFirst()) {
                str2 = query.getString(query.getColumnIndex("_display_name"));
            } else {
                str2 = CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE;
            }
            if (query != null) {
                query.close();
            }
            int andIncrement = uniqueIdGenerator.getAndIncrement();
            safIdMap.put(andIncrement, new SAFProtocolUrl(Integer.valueOf(andIncrement), uri, str, context.getContentResolver()));
            return "saf:" + andIncrement + "." + extractExtensionFromSafDisplayName(str2);
        } catch (Throwable th) {
            android.util.Log.e(TAG, String.format("Failed to get %s column for %s.%s", "_display_name", uri.toString(), Exceptions.getStackTraceString(th)));
            throw th;
        }
    }

    public static String getSafParameterForRead(Context context, Uri uri) {
        return getSafParameter(context, uri, "r");
    }

    public static String getSafParameterForWrite(Context context, Uri uri) {
        return getSafParameter(context, uri, OfficeOpenXMLExtended.WORD_PROCESSING_PREFIX);
    }

    public static Session getSession(long j10) {
        Session session;
        synchronized (sessionHistoryLock) {
            session = sessionHistoryMap.get(Long.valueOf(j10));
        }
        return session;
    }

    public static int getSessionHistorySize() {
        return sessionHistorySize;
    }

    public static List<Session> getSessions() {
        LinkedList linkedList;
        synchronized (sessionHistoryLock) {
            linkedList = new LinkedList(sessionHistoryList);
        }
        return linkedList;
    }

    public static List<Session> getSessionsByState(SessionState sessionState) {
        LinkedList linkedList = new LinkedList();
        synchronized (sessionHistoryLock) {
            for (Session session : sessionHistoryList) {
                if (session.getState() == sessionState) {
                    linkedList.add(session);
                }
            }
        }
        return linkedList;
    }

    public static List<String> getSupportedCameraIds(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(CameraSupport.extractSupportedCameraIds(context));
        return arrayList;
    }

    public static String getVersion() {
        if (isLTSBuild()) {
            return String.format("%s-lts", getNativeVersion());
        }
        return getNativeVersion();
    }

    private static native void ignoreNativeSignal(int i10);

    public static void ignoreSignal(Signal signal) {
        ignoreNativeSignal(signal.getValue());
    }

    public static boolean isLTSBuild() {
        return AbiDetect.isNativeLTSBuild();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x005f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void log(long r5, int r7, byte[] r8) {
        /*
            com.arthenica.ffmpegkit.Level r0 = com.arthenica.ffmpegkit.Level.from(r7)
            java.lang.String r1 = new java.lang.String
            r1.<init>(r8)
            com.arthenica.ffmpegkit.Log r8 = new com.arthenica.ffmpegkit.Log
            r8.<init>(r5, r0, r1)
            com.arthenica.ffmpegkit.LogRedirectionStrategy r2 = com.arthenica.ffmpegkit.FFmpegKitConfig.globalLogRedirectionStrategy
            com.arthenica.ffmpegkit.Level r3 = com.arthenica.ffmpegkit.FFmpegKitConfig.activeLogLevel
            com.arthenica.ffmpegkit.Level r4 = com.arthenica.ffmpegkit.Level.AV_LOG_QUIET
            if (r3 != r4) goto L1e
            com.arthenica.ffmpegkit.Level r3 = com.arthenica.ffmpegkit.Level.AV_LOG_STDERR
            int r3 = r3.getValue()
            if (r7 != r3) goto L26
        L1e:
            com.arthenica.ffmpegkit.Level r3 = com.arthenica.ffmpegkit.FFmpegKitConfig.activeLogLevel
            int r3 = r3.getValue()
            if (r7 <= r3) goto L27
        L26:
            return
        L27:
            com.arthenica.ffmpegkit.Session r5 = getSession(r5)
            r6 = 1
            java.lang.String r7 = "ffmpeg-kit"
            r3 = 0
            if (r5 == 0) goto L5a
            com.arthenica.ffmpegkit.LogRedirectionStrategy r2 = r5.getLogRedirectionStrategy()
            r5.addLog(r8)
            com.arthenica.ffmpegkit.LogCallback r4 = r5.getLogCallback()
            if (r4 == 0) goto L5a
            com.arthenica.ffmpegkit.LogCallback r5 = r5.getLogCallback()     // Catch: java.lang.Exception -> L46
            r5.apply(r8)     // Catch: java.lang.Exception -> L46
            goto L58
        L46:
            r5 = move-exception
            java.lang.String r5 = com.arthenica.smartexception.java.Exceptions.getStackTraceString(r5)
            java.lang.Object[] r5 = new java.lang.Object[]{r5}
            java.lang.String r4 = "Exception thrown inside session log callback.%s"
            java.lang.String r5 = java.lang.String.format(r4, r5)
            android.util.Log.e(r7, r5)
        L58:
            r5 = r6
            goto L5b
        L5a:
            r5 = r3
        L5b:
            com.arthenica.ffmpegkit.LogCallback r4 = com.arthenica.ffmpegkit.FFmpegKitConfig.globalLogCallback
            if (r4 == 0) goto L76
            r4.apply(r8)     // Catch: java.lang.Exception -> L63
            goto L75
        L63:
            r8 = move-exception
            java.lang.String r8 = com.arthenica.smartexception.java.Exceptions.getStackTraceString(r8)
            java.lang.Object[] r8 = new java.lang.Object[]{r8}
            java.lang.String r3 = "Exception thrown inside global log callback.%s"
            java.lang.String r8 = java.lang.String.format(r3, r8)
            android.util.Log.e(r7, r8)
        L75:
            r3 = r6
        L76:
            int[] r8 = com.arthenica.ffmpegkit.FFmpegKitConfig.AnonymousClass2.$SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy
            int r2 = r2.ordinal()
            r8 = r8[r2]
            if (r8 == r6) goto Lb3
            r6 = 2
            if (r8 == r6) goto L92
            r6 = 3
            if (r8 == r6) goto L8f
            r6 = 4
            if (r8 == r6) goto L8a
            goto L95
        L8a:
            if (r3 != 0) goto L8e
            if (r5 == 0) goto L95
        L8e:
            return
        L8f:
            if (r5 == 0) goto L95
            return
        L92:
            if (r3 == 0) goto L95
            return
        L95:
            int[] r5 = com.arthenica.ffmpegkit.FFmpegKitConfig.AnonymousClass2.$SwitchMap$com$arthenica$ffmpegkit$Level
            int r6 = r0.ordinal()
            r5 = r5[r6]
            switch(r5) {
                case 1: goto Lb3;
                case 2: goto Lb0;
                case 3: goto Lb0;
                case 4: goto Lac;
                case 5: goto La8;
                case 6: goto La4;
                case 7: goto La4;
                case 8: goto La4;
                default: goto La0;
            }
        La0:
            android.util.Log.v(r7, r1)
            goto Lb3
        La4:
            android.util.Log.e(r7, r1)
            goto Lb3
        La8:
            android.util.Log.w(r7, r1)
            goto Lb3
        Lac:
            android.util.Log.i(r7, r1)
            goto Lb3
        Lb0:
            android.util.Log.d(r7, r1)
        Lb3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.arthenica.ffmpegkit.FFmpegKitConfig.log(long, int, byte[]):void");
    }

    public static native int messagesInTransmit(long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void nativeFFmpegCancel(long j10);

    private static native int nativeFFmpegExecute(long j10, String[] strArr);

    static native int nativeFFprobeExecute(long j10, String[] strArr);

    public static String[] parseArguments(String str) {
        Character ch;
        ArrayList arrayList = new ArrayList();
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = false;
        boolean z11 = false;
        for (int i10 = 0; i10 < str.length(); i10++) {
            if (i10 > 0) {
                ch = Character.valueOf(str.charAt(i10 - 1));
            } else {
                ch = null;
            }
            char charAt = str.charAt(i10);
            if (charAt == ' ') {
                if (!z10 && !z11) {
                    if (sb2.length() > 0) {
                        arrayList.add(sb2.toString());
                        sb2 = new StringBuilder();
                    }
                } else {
                    sb2.append(charAt);
                }
            } else if (charAt == '\'' && (ch == null || ch.charValue() != '\\')) {
                if (z10) {
                    z10 = false;
                } else if (z11) {
                    sb2.append(charAt);
                } else {
                    z10 = true;
                }
            } else if (charAt == '\"' && (ch == null || ch.charValue() != '\\')) {
                if (z11) {
                    z11 = false;
                } else if (z10) {
                    sb2.append(charAt);
                } else {
                    z11 = true;
                }
            } else {
                sb2.append(charAt);
            }
        }
        if (sb2.length() > 0) {
            arrayList.add(sb2.toString());
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static void printToLogcat(int i10, String str) {
        do {
            if (str.length() <= 4000) {
                android.util.Log.println(i10, TAG, str);
                str = "";
            } else {
                int lastIndexOf = str.substring(0, 4000).lastIndexOf(10);
                if (lastIndexOf < 0) {
                    android.util.Log.println(i10, TAG, str.substring(0, 4000));
                    str = str.substring(4000);
                } else {
                    android.util.Log.println(i10, TAG, str.substring(0, lastIndexOf));
                    str = str.substring(lastIndexOf);
                }
            }
        } while (str.length() > 0);
    }

    public static String registerNewFFmpegPipe(Context context) {
        File file = new File(context.getCacheDir(), "pipes");
        if (!file.exists() && !file.mkdirs()) {
            android.util.Log.e(TAG, String.format("Failed to create pipes directory: %s.", file.getAbsolutePath()));
            return null;
        }
        String format = MessageFormat.format("{0}{1}{2}{3}", file, File.separator, FFMPEG_KIT_NAMED_PIPE_PREFIX, Integer.valueOf(uniqueIdGenerator.getAndIncrement()));
        closeFFmpegPipe(format);
        int registerNewNativeFFmpegPipe = registerNewNativeFFmpegPipe(format);
        if (registerNewNativeFFmpegPipe == 0) {
            return format;
        }
        android.util.Log.e(TAG, String.format("Failed to register new FFmpeg pipe %s. Operation failed with rc=%d.", format, Integer.valueOf(registerNewNativeFFmpegPipe)));
        return null;
    }

    private static native int registerNewNativeFFmpegPipe(String str);

    private static int safClose(int i10) {
        try {
            SparseArray<SAFProtocolUrl> sparseArray = safFileDescriptorMap;
            SAFProtocolUrl sAFProtocolUrl = sparseArray.get(i10);
            if (sAFProtocolUrl != null) {
                ParcelFileDescriptor parcelFileDescriptor = sAFProtocolUrl.getParcelFileDescriptor();
                if (parcelFileDescriptor != null) {
                    sparseArray.delete(i10);
                    safIdMap.delete(sAFProtocolUrl.getSafId().intValue());
                    parcelFileDescriptor.close();
                    return 1;
                }
                android.util.Log.e(TAG, String.format("ParcelFileDescriptor for SAF fd %d not found.", Integer.valueOf(i10)));
            } else {
                android.util.Log.e(TAG, String.format("SAF fd %d not found.", Integer.valueOf(i10)));
            }
        } catch (Throwable th) {
            android.util.Log.e(TAG, String.format("Failed to close SAF fd: %d.%s", Integer.valueOf(i10), Exceptions.getStackTraceString(th)));
        }
        return 0;
    }

    private static int safOpen(int i10) {
        SAFProtocolUrl sAFProtocolUrl;
        try {
            sAFProtocolUrl = safIdMap.get(i10);
        } catch (Throwable th) {
            android.util.Log.e(TAG, String.format("Failed to open SAF id: %d.%s", Integer.valueOf(i10), Exceptions.getStackTraceString(th)));
        }
        if (sAFProtocolUrl != null) {
            ParcelFileDescriptor openFileDescriptor = sAFProtocolUrl.getContentResolver().openFileDescriptor(sAFProtocolUrl.getUri(), sAFProtocolUrl.getOpenMode());
            sAFProtocolUrl.setParcelFileDescriptor(openFileDescriptor);
            int fd2 = openFileDescriptor.getFd();
            safFileDescriptorMap.put(fd2, sAFProtocolUrl);
            return fd2;
        }
        android.util.Log.e(TAG, String.format("SAF id %d not found.", Integer.valueOf(i10)));
        return 0;
    }

    public static String sessionStateToString(SessionState sessionState) {
        return sessionState.toString();
    }

    public static void setAsyncConcurrencyLimit(int i10) {
        if (i10 > 0) {
            asyncConcurrencyLimit = i10;
            ExecutorService executorService = asyncExecutorService;
            asyncExecutorService = Executors.newFixedThreadPool(i10);
            executorService.shutdown();
        }
    }

    public static int setEnvironmentVariable(String str, String str2) {
        return setNativeEnvironmentVariable(str, str2);
    }

    public static void setFontDirectory(Context context, String str, Map<String, String> map) {
        setFontDirectoryList(context, Collections.singletonList(str), map);
    }

    public static void setFontDirectoryList(Context context, List<String> list, Map<String, String> map) {
        int i10;
        Object obj;
        File file = new File(context.getCacheDir(), "fontconfig");
        if (!file.exists()) {
            android.util.Log.d(TAG, String.format("Created temporary font conf directory: %s.", Boolean.valueOf(file.mkdirs())));
        }
        File file2 = new File(file, "fonts.conf");
        if (file2.exists()) {
            android.util.Log.d(TAG, String.format("Deleted old temporary font configuration: %s.", Boolean.valueOf(file2.delete())));
        }
        StringBuilder sb2 = new StringBuilder("");
        if (map != null && map.size() > 0) {
            map.entrySet();
            i10 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (key != null && value != null && key.trim().length() > 0 && value.trim().length() > 0) {
                    sb2.append("    <match target=\"pattern\">\n");
                    sb2.append("        <test qual=\"any\" name=\"family\">\n");
                    sb2.append(String.format("            <string>%s</string>\n", key));
                    sb2.append("        </test>\n");
                    sb2.append("        <edit name=\"family\" mode=\"assign\" binding=\"same\">\n");
                    sb2.append(String.format("            <string>%s</string>\n", value));
                    sb2.append("        </edit>\n");
                    sb2.append("    </match>\n");
                    i10++;
                }
            }
        } else {
            i10 = 0;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("<?xml version=\"1.0\"?>\n");
        sb3.append("<!DOCTYPE fontconfig SYSTEM \"fonts.dtd\">\n");
        sb3.append("<fontconfig>\n");
        sb3.append("    <dir prefix=\"cwd\">.</dir>\n");
        for (String str : list) {
            sb3.append("    <dir>");
            sb3.append(str);
            sb3.append("</dir>\n");
        }
        sb3.append((CharSequence) sb2);
        sb3.append("</fontconfig>\n");
        AtomicReference atomicReference = new AtomicReference();
        try {
            try {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file2);
                    atomicReference.set(fileOutputStream);
                    fileOutputStream.write(sb3.toString().getBytes());
                    fileOutputStream.flush();
                    android.util.Log.d(TAG, String.format("Saved new temporary font configuration with %d font name mappings.", Integer.valueOf(i10)));
                    setFontconfigConfigurationPath(file.getAbsolutePath());
                    for (String str2 : list) {
                        android.util.Log.d(TAG, String.format("Font directory %s registered successfully.", str2));
                    }
                } catch (IOException e10) {
                    android.util.Log.e(TAG, String.format("Failed to set font directory: %s.%s", Arrays.toString(list.toArray()), Exceptions.getStackTraceString(e10)));
                    if (atomicReference.get() != null) {
                        obj = atomicReference.get();
                    } else {
                        return;
                    }
                }
                if (atomicReference.get() != null) {
                    obj = atomicReference.get();
                    ((FileOutputStream) obj).close();
                }
            } catch (Throwable th) {
                if (atomicReference.get() != null) {
                    try {
                        ((FileOutputStream) atomicReference.get()).close();
                    } catch (IOException unused) {
                    }
                }
                throw th;
            }
        } catch (IOException unused2) {
        }
    }

    public static int setFontconfigConfigurationPath(String str) {
        return setNativeEnvironmentVariable("FONTCONFIG_PATH", str);
    }

    public static void setLogLevel(Level level) {
        if (level != null) {
            activeLogLevel = level;
            setNativeLogLevel(level.getValue());
        }
    }

    public static void setLogRedirectionStrategy(LogRedirectionStrategy logRedirectionStrategy) {
        globalLogRedirectionStrategy = logRedirectionStrategy;
    }

    private static native int setNativeEnvironmentVariable(String str, String str2);

    private static native void setNativeLogLevel(int i10);

    public static void setSessionHistorySize(int i10) {
        if (i10 < 1000) {
            if (i10 > 0) {
                sessionHistorySize = i10;
                deleteExpiredSessions();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Session history size must not exceed the hard limit!");
    }

    private static void statistics(long j10, int i10, float f10, float f11, long j11, double d10, double d11, double d12) {
        Statistics statistics = new Statistics(j10, i10, f10, f11, j11, d10, d11, d12);
        Session session = getSession(j10);
        if (session != null && session.isFFmpeg()) {
            FFmpegSession fFmpegSession = (FFmpegSession) session;
            fFmpegSession.addStatistics(statistics);
            if (fFmpegSession.getStatisticsCallback() != null) {
                try {
                    fFmpegSession.getStatisticsCallback().apply(statistics);
                } catch (Exception e10) {
                    android.util.Log.e(TAG, String.format("Exception thrown inside session statistics callback.%s", Exceptions.getStackTraceString(e10)));
                }
            }
        }
        StatisticsCallback statisticsCallback = globalStatisticsCallback;
        if (statisticsCallback != null) {
            try {
                statisticsCallback.apply(statistics);
            } catch (Exception e11) {
                android.util.Log.e(TAG, String.format("Exception thrown inside global statistics callback.%s", Exceptions.getStackTraceString(e11)));
            }
        }
    }

    public static void asyncFFmpegExecute(FFmpegSession fFmpegSession, ExecutorService executorService) {
        fFmpegSession.setFuture(executorService.submit(new AsyncFFmpegExecuteTask(fFmpegSession)));
    }

    public static void asyncFFprobeExecute(FFprobeSession fFprobeSession, ExecutorService executorService) {
        fFprobeSession.setFuture(executorService.submit(new AsyncFFprobeExecuteTask(fFprobeSession)));
    }

    public static void asyncGetMediaInformationExecute(MediaInformationSession mediaInformationSession, ExecutorService executorService, int i10) {
        mediaInformationSession.setFuture(executorService.submit(new AsyncGetMediaInformationTask(mediaInformationSession, Integer.valueOf(i10))));
    }
}
