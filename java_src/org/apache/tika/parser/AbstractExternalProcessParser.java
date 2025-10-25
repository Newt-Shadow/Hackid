package org.apache.tika.parser;

import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public abstract class AbstractExternalProcessParser implements Parser {
    private static final ConcurrentHashMap<String, Process> PROCESS_MAP = new ConcurrentHashMap<>();
    private static final long serialVersionUID = 7186985395903074255L;

    static {
        Runtime.getRuntime().addShutdownHook(new Thread(new Runnable() { // from class: org.apache.tika.parser.b
            @Override // java.lang.Runnable
            public final void run() {
                AbstractExternalProcessParser.lambda$static$0();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$0() {
        PROCESS_MAP.forEachValue(1L, new Consumer() { // from class: org.apache.tika.parser.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((Process) obj).destroyForcibly();
            }
        });
    }

    protected String register(Process process) {
        String uuid = UUID.randomUUID().toString();
        PROCESS_MAP.put(uuid, process);
        return uuid;
    }

    protected Process release(String str) {
        return PROCESS_MAP.remove(str);
    }
}
