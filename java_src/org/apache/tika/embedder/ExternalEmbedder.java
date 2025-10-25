package org.apache.tika.embedder;

import cf.g;
import gf.e;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.tika.exception.TikaException;
import org.apache.tika.io.TemporaryResources;
import org.apache.tika.io.TikaInputStream;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.metadata.Property;
import org.apache.tika.mime.MediaType;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.parser.external.ExternalParser;
/* loaded from: classes2.dex */
public class ExternalEmbedder implements Embedder {
    public static final String METADATA_COMMAND_ARGUMENTS_SERIALIZED_TOKEN = "${METADATA_SERIALIZED}";
    public static final String METADATA_COMMAND_ARGUMENTS_TOKEN = "${METADATA}";
    private static final long serialVersionUID = -2828829275642475697L;
    private final TemporaryResources tmp = new TemporaryResources();
    private Set<MediaType> supportedEmbedTypes = Collections.emptySet();
    private Map<Property, String[]> metadataCommandArguments = null;
    private String[] command = {"sed", "-e", "$a\\\n${METADATA_SERIALIZED}", ExternalParser.INPUT_FILE_TOKEN};
    private String commandAssignmentOperator = "=";
    private String commandAssignmentDelimeter = ", ";
    private String commandAppendOperator = "=";
    private boolean quoteAssignmentValues = false;

    public static boolean check(String str, int... iArr) {
        return check(new String[]{str}, iArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$multiThreadedStreamCopy$0(InputStream inputStream, OutputStream outputStream) {
        try {
            g.n(inputStream, outputStream);
        } catch (IOException e10) {
            PrintStream printStream = System.out;
            String message = e10.getMessage();
            printStream.println("ERROR: " + message);
        }
    }

    private void multiThreadedStreamCopy(final InputStream inputStream, final OutputStream outputStream) {
        new Thread(new Runnable() { // from class: org.apache.tika.embedder.a
            @Override // java.lang.Runnable
            public final void run() {
                ExternalEmbedder.lambda$multiThreadedStreamCopy$0(inputStream, outputStream);
            }
        }).start();
    }

    private void sendInputStreamToStdIn(InputStream inputStream, Process process) {
        multiThreadedStreamCopy(inputStream, process.getOutputStream());
    }

    private void sendStdErrToOutputStream(Process process, OutputStream outputStream) {
        multiThreadedStreamCopy(process.getErrorStream(), outputStream);
    }

    private void sendStdOutToOutputStream(Process process, OutputStream outputStream) {
        try {
            g.n(process.getInputStream(), outputStream);
        } catch (IOException e10) {
            PrintStream printStream = System.out;
            String message = e10.getMessage();
            printStream.println("ERROR: " + message);
        }
    }

    protected static String serializeMetadata(List<String> list) {
        if (list != null) {
            return Arrays.toString(list.toArray());
        }
        return "";
    }

    @Override // org.apache.tika.embedder.Embedder
    public void embed(Metadata metadata, InputStream inputStream, OutputStream outputStream, ParseContext parseContext) {
        Process exec;
        int i10;
        Map<Property, String[]> map = this.metadataCommandArguments;
        boolean z10 = (map == null || map.isEmpty()) ? false : true;
        TikaInputStream tikaInputStream = TikaInputStream.get(inputStream);
        File file = null;
        List<String> commandMetadataSegments = z10 ? getCommandMetadataSegments(metadata) : null;
        String[] strArr = this.command;
        ArrayList<String> arrayList = new ArrayList();
        int i11 = 0;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = true;
        boolean z14 = true;
        for (int length = strArr.length; i11 < length; length = i10) {
            String str = strArr[i11];
            String[] strArr2 = strArr;
            if (str.contains(ExternalParser.INPUT_FILE_TOKEN)) {
                i10 = length;
                str = str.replace(ExternalParser.INPUT_FILE_TOKEN, tikaInputStream.getFile().toString());
                z13 = false;
            } else {
                i10 = length;
            }
            if (str.contains(ExternalParser.OUTPUT_FILE_TOKEN)) {
                file = this.tmp.createTemporaryFile();
                str = str.replace(ExternalParser.OUTPUT_FILE_TOKEN, file.toString());
                z14 = false;
            }
            if (str.contains(METADATA_COMMAND_ARGUMENTS_SERIALIZED_TOKEN)) {
                z11 = true;
            }
            if (str.contains(METADATA_COMMAND_ARGUMENTS_TOKEN)) {
                if (z10) {
                    arrayList.addAll(commandMetadataSegments);
                }
                z12 = true;
            } else {
                arrayList.add(str);
            }
            i11++;
            strArr = strArr2;
        }
        if (z10) {
            if (z11) {
                int i12 = 0;
                for (String str2 : arrayList) {
                    if (str2.contains(METADATA_COMMAND_ARGUMENTS_SERIALIZED_TOKEN)) {
                        arrayList.set(i12, str2.replace(METADATA_COMMAND_ARGUMENTS_SERIALIZED_TOKEN, serializeMetadata(commandMetadataSegments)));
                    }
                    i12++;
                }
            } else if (!z12 && !z11) {
                arrayList.addAll(commandMetadataSegments);
            }
        }
        if (arrayList.toArray().length == 1) {
            exec = Runtime.getRuntime().exec(((String[]) arrayList.toArray(new String[0]))[0]);
        } else {
            exec = Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[0]));
        }
        Process process = exec;
        e l10 = e.j().l();
        try {
            sendStdErrToOutputStream(process, l10);
            if (z13) {
                sendInputStreamToStdIn(inputStream, process);
            } else {
                process.getOutputStream().close();
            }
            if (z14) {
                sendStdOutToOutputStream(process, outputStream);
            } else {
                this.tmp.dispose();
                try {
                    process.waitFor();
                } catch (InterruptedException unused) {
                }
                g.n(TikaInputStream.get(file), outputStream);
            }
            if (z14) {
                try {
                    process.waitFor();
                } catch (InterruptedException | Exception unused2) {
                }
            } else {
                file.delete();
            }
            if (!z13) {
                g.k(tikaInputStream);
            }
            g.l(outputStream);
            g.l(l10);
            if (process.exitValue() == 0) {
                return;
            }
            String e10 = l10.e(StandardCharsets.UTF_8.name());
            throw new TikaException("There was an error executing the command line\nExecutable Command:\n\n" + arrayList + "\nExecutable Error:\n\n" + e10);
        } catch (Throwable th) {
            if (z14) {
                try {
                    process.waitFor();
                } catch (InterruptedException | Exception unused3) {
                }
            } else {
                file.delete();
            }
            if (!z13) {
                g.k(tikaInputStream);
            }
            g.l(outputStream);
            g.l(l10);
            if (process.exitValue() != 0) {
                String e11 = l10.e(StandardCharsets.UTF_8.name());
                throw new TikaException("There was an error executing the command line\nExecutable Command:\n\n" + arrayList + "\nExecutable Error:\n\n" + e11);
            }
            throw th;
        }
    }

    public String[] getCommand() {
        return this.command;
    }

    public String getCommandAppendOperator() {
        return this.commandAppendOperator;
    }

    public String getCommandAssignmentDelimeter() {
        return this.commandAssignmentDelimeter;
    }

    public String getCommandAssignmentOperator() {
        return this.commandAssignmentOperator;
    }

    protected List<String> getCommandMetadataSegments(Metadata metadata) {
        String[] strArr;
        String[] strArr2;
        int i10;
        Iterator<Property> it;
        ArrayList arrayList = new ArrayList();
        if (metadata != null && metadata.names() != null) {
            String[] names = metadata.names();
            int length = names.length;
            for (int i11 = 0; i11 < length; i11++) {
                String str = names[i11];
                Iterator<Property> it2 = getMetadataCommandArguments().keySet().iterator();
                while (it2.hasNext()) {
                    Property next = it2.next();
                    if (str.equals(next.getName()) && (strArr = getMetadataCommandArguments().get(next)) != null) {
                        int length2 = strArr.length;
                        int i12 = 0;
                        while (i12 < length2) {
                            String str2 = strArr[i12];
                            if (metadata.isMultiValued(str)) {
                                String[] values = metadata.getValues(str);
                                int length3 = values.length;
                                int i13 = 0;
                                while (true) {
                                    strArr2 = names;
                                    if (i13 >= length3) {
                                        break;
                                    }
                                    String str3 = values[i13];
                                    int i14 = length;
                                    if (this.quoteAssignmentValues) {
                                        str3 = "'" + str3 + "'";
                                    }
                                    arrayList.add(str2 + this.commandAppendOperator + str3);
                                    i13++;
                                    names = strArr2;
                                    length = i14;
                                    it2 = it2;
                                }
                                i10 = length;
                                it = it2;
                            } else {
                                strArr2 = names;
                                i10 = length;
                                it = it2;
                                String str4 = metadata.get(str);
                                if (this.quoteAssignmentValues) {
                                    str4 = "'" + str4 + "'";
                                }
                                arrayList.add(str2 + this.commandAssignmentOperator + str4);
                            }
                            i12++;
                            names = strArr2;
                            length = i10;
                            it2 = it;
                        }
                    }
                    names = names;
                    length = length;
                    it2 = it2;
                }
            }
        }
        return arrayList;
    }

    public Map<Property, String[]> getMetadataCommandArguments() {
        return this.metadataCommandArguments;
    }

    @Override // org.apache.tika.embedder.Embedder
    public Set<MediaType> getSupportedEmbedTypes(ParseContext parseContext) {
        return getSupportedEmbedTypes();
    }

    public boolean isQuoteAssignmentValues() {
        return this.quoteAssignmentValues;
    }

    public void setCommand(String... strArr) {
        this.command = strArr;
    }

    public void setCommandAppendOperator(String str) {
        this.commandAppendOperator = str;
    }

    public void setCommandAssignmentDelimeter(String str) {
        this.commandAssignmentDelimeter = str;
    }

    public void setCommandAssignmentOperator(String str) {
        this.commandAssignmentOperator = str;
    }

    public void setMetadataCommandArguments(Map<Property, String[]> map) {
        this.metadataCommandArguments = map;
    }

    public void setQuoteAssignmentValues(boolean z10) {
        this.quoteAssignmentValues = z10;
    }

    public void setSupportedEmbedTypes(Set<MediaType> set) {
        this.supportedEmbedTypes = Collections.unmodifiableSet(new HashSet(set));
    }

    public static boolean check(String[] strArr, int... iArr) {
        Process exec;
        if (iArr.length == 0) {
            iArr = new int[]{127};
        }
        try {
            if (strArr.length == 1) {
                exec = Runtime.getRuntime().exec(strArr[0]);
            } else {
                exec = Runtime.getRuntime().exec(strArr);
            }
            int waitFor = exec.waitFor();
            for (int i10 : iArr) {
                if (waitFor == i10) {
                    return false;
                }
            }
            return true;
        } catch (IOException | InterruptedException unused) {
            return false;
        }
    }

    public Set<MediaType> getSupportedEmbedTypes() {
        return this.supportedEmbedTypes;
    }
}
