package org.apache.tika.fork;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.NotSerializableException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.metadata.TikaCoreProperties;
import org.apache.tika.sax.AbstractRecursiveParserWrapperHandler;
import org.apache.tika.sax.ContentHandlerFactory;
import org.apache.tika.sax.RecursiveParserWrapperHandler;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
/* loaded from: classes2.dex */
class RecursiveMetadataContentHandlerProxy extends RecursiveParserWrapperHandler implements ForkProxy {
    public static final byte COMPLETE = 5;
    public static final byte EMBEDDED_DOCUMENT = 1;
    public static final byte HANDLER_AND_METADATA = 3;
    public static final byte MAIN_DOCUMENT = 2;
    public static final byte METADATA_ONLY = 4;
    private static final long serialVersionUID = 737511106054617524L;
    private transient DataOutputStream output;
    private final int resource;

    public RecursiveMetadataContentHandlerProxy(int i10, ContentHandlerFactory contentHandlerFactory) {
        super(contentHandlerFactory);
        this.resource = i10;
    }

    private void doneSending() {
        try {
            this.output.flush();
        } catch (IOException e10) {
            throw new SAXException("Unexpected fork proxy problem", e10);
        }
    }

    private void proxyBackToClient(int i10, ContentHandler contentHandler, Metadata metadata) {
        boolean z10;
        byte[] bArr;
        try {
            try {
                this.output.write(3);
                this.output.writeByte(this.resource);
                this.output.writeByte(i10);
                if (contentHandler instanceof Serializable) {
                    try {
                        bArr = serialize(contentHandler);
                        z10 = true;
                    } catch (NotSerializableException unused) {
                        z10 = false;
                        bArr = null;
                    }
                    if (z10) {
                        this.output.write(3);
                        sendBytes(bArr);
                        send(metadata);
                        this.output.writeByte(5);
                        return;
                    }
                }
                metadata.set(TikaCoreProperties.TIKA_CONTENT, contentHandler.toString());
                this.output.writeByte(4);
                send(metadata);
                this.output.writeByte(5);
            } finally {
                doneSending();
            }
        } catch (IOException e10) {
            throw new SAXException(e10);
        }
    }

    private void send(Object obj) {
        sendBytes(serialize(obj));
    }

    private void sendBytes(byte[] bArr) {
        this.output.writeInt(bArr.length);
        this.output.write(bArr);
        this.output.flush();
    }

    private byte[] serialize(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        try {
            objectOutputStream.writeObject(obj);
            objectOutputStream.flush();
            objectOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th) {
            try {
                objectOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // org.apache.tika.sax.RecursiveParserWrapperHandler, org.apache.tika.sax.AbstractRecursiveParserWrapperHandler
    public void endDocument(ContentHandler contentHandler, Metadata metadata) {
        if (hasHitMaximumEmbeddedResources()) {
            metadata.set(AbstractRecursiveParserWrapperHandler.EMBEDDED_RESOURCE_LIMIT_REACHED, "true");
        }
        proxyBackToClient(2, contentHandler, metadata);
    }

    @Override // org.apache.tika.sax.RecursiveParserWrapperHandler, org.apache.tika.sax.AbstractRecursiveParserWrapperHandler
    public void endEmbeddedDocument(ContentHandler contentHandler, Metadata metadata) {
        proxyBackToClient(1, contentHandler, metadata);
    }

    @Override // org.apache.tika.fork.ForkProxy
    public void init(DataInputStream dataInputStream, DataOutputStream dataOutputStream) {
        this.output = dataOutputStream;
    }
}
