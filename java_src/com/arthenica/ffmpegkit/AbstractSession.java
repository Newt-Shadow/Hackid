package com.arthenica.ffmpegkit;

import com.arthenica.smartexception.java.Exceptions;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public abstract class AbstractSession implements Session {
    public static final int DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT = 5000;
    protected static final AtomicLong sessionIdGenerator = new AtomicLong(1);
    protected final String[] arguments;
    protected final LogCallback logCallback;
    protected final LogRedirectionStrategy logRedirectionStrategy;
    protected final long sessionId = sessionIdGenerator.getAndIncrement();
    protected final Date createTime = new Date();
    protected Date startTime = null;
    protected Date endTime = null;
    protected final List<Log> logs = new LinkedList();
    protected final Object logsLock = new Object();
    protected Future<?> future = null;
    protected SessionState state = SessionState.CREATED;
    protected ReturnCode returnCode = null;
    protected String failStackTrace = null;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractSession(String[] strArr, LogCallback logCallback, LogRedirectionStrategy logRedirectionStrategy) {
        this.logCallback = logCallback;
        this.arguments = strArr;
        this.logRedirectionStrategy = logRedirectionStrategy;
        FFmpegKitConfig.addSession(this);
    }

    @Override // com.arthenica.ffmpegkit.Session
    public void addLog(Log log) {
        synchronized (this.logsLock) {
            this.logs.add(log);
        }
    }

    @Override // com.arthenica.ffmpegkit.Session
    public void cancel() {
        if (this.state == SessionState.RUNNING) {
            FFmpegKit.cancel(this.sessionId);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void complete(ReturnCode returnCode) {
        this.returnCode = returnCode;
        this.state = SessionState.COMPLETED;
        this.endTime = new Date();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fail(Exception exc) {
        this.failStackTrace = Exceptions.getStackTraceString(exc);
        this.state = SessionState.FAILED;
        this.endTime = new Date();
    }

    @Override // com.arthenica.ffmpegkit.Session
    public List<Log> getAllLogs(int i10) {
        waitForAsynchronousMessagesInTransmit(i10);
        if (thereAreAsynchronousMessagesInTransmit()) {
            android.util.Log.i("ffmpeg-kit", String.format("getAllLogs was called to return all logs but there are still logs being transmitted for session id %d.", Long.valueOf(this.sessionId)));
        }
        return getLogs();
    }

    @Override // com.arthenica.ffmpegkit.Session
    public String getAllLogsAsString(int i10) {
        waitForAsynchronousMessagesInTransmit(i10);
        if (thereAreAsynchronousMessagesInTransmit()) {
            android.util.Log.i("ffmpeg-kit", String.format("getAllLogsAsString was called to return all logs but there are still logs being transmitted for session id %d.", Long.valueOf(this.sessionId)));
        }
        return getLogsAsString();
    }

    @Override // com.arthenica.ffmpegkit.Session
    public String[] getArguments() {
        return this.arguments;
    }

    @Override // com.arthenica.ffmpegkit.Session
    public String getCommand() {
        return FFmpegKitConfig.argumentsToString(this.arguments);
    }

    @Override // com.arthenica.ffmpegkit.Session
    public Date getCreateTime() {
        return this.createTime;
    }

    @Override // com.arthenica.ffmpegkit.Session
    public long getDuration() {
        Date date = this.startTime;
        Date date2 = this.endTime;
        if (date != null && date2 != null) {
            return date2.getTime() - date.getTime();
        }
        return 0L;
    }

    @Override // com.arthenica.ffmpegkit.Session
    public Date getEndTime() {
        return this.endTime;
    }

    @Override // com.arthenica.ffmpegkit.Session
    public String getFailStackTrace() {
        return this.failStackTrace;
    }

    @Override // com.arthenica.ffmpegkit.Session
    public Future<?> getFuture() {
        return this.future;
    }

    @Override // com.arthenica.ffmpegkit.Session
    public LogCallback getLogCallback() {
        return this.logCallback;
    }

    @Override // com.arthenica.ffmpegkit.Session
    public LogRedirectionStrategy getLogRedirectionStrategy() {
        return this.logRedirectionStrategy;
    }

    @Override // com.arthenica.ffmpegkit.Session
    public List<Log> getLogs() {
        LinkedList linkedList;
        synchronized (this.logsLock) {
            linkedList = new LinkedList(this.logs);
        }
        return linkedList;
    }

    @Override // com.arthenica.ffmpegkit.Session
    public String getLogsAsString() {
        StringBuilder sb2 = new StringBuilder();
        synchronized (this.logsLock) {
            for (Log log : this.logs) {
                sb2.append(log.getMessage());
            }
        }
        return sb2.toString();
    }

    @Override // com.arthenica.ffmpegkit.Session
    public String getOutput() {
        return getAllLogsAsString();
    }

    @Override // com.arthenica.ffmpegkit.Session
    public ReturnCode getReturnCode() {
        return this.returnCode;
    }

    @Override // com.arthenica.ffmpegkit.Session
    public long getSessionId() {
        return this.sessionId;
    }

    @Override // com.arthenica.ffmpegkit.Session
    public Date getStartTime() {
        return this.startTime;
    }

    @Override // com.arthenica.ffmpegkit.Session
    public SessionState getState() {
        return this.state;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFuture(Future<?> future) {
        this.future = future;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startRunning() {
        this.state = SessionState.RUNNING;
        this.startTime = new Date();
    }

    @Override // com.arthenica.ffmpegkit.Session
    public boolean thereAreAsynchronousMessagesInTransmit() {
        if (FFmpegKitConfig.messagesInTransmit(this.sessionId) != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void waitForAsynchronousMessagesInTransmit(int i10) {
        long currentTimeMillis = System.currentTimeMillis();
        while (thereAreAsynchronousMessagesInTransmit() && System.currentTimeMillis() < i10 + currentTimeMillis) {
            synchronized (this) {
                try {
                    wait(100L);
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    @Override // com.arthenica.ffmpegkit.Session
    public List<Log> getAllLogs() {
        return getAllLogs(DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT);
    }

    @Override // com.arthenica.ffmpegkit.Session
    public String getAllLogsAsString() {
        return getAllLogsAsString(DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT);
    }
}
