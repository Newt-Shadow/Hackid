package org.apache.tika.fork;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.AttributesImpl;
/* loaded from: classes2.dex */
class ContentHandlerResource implements ForkResource {
    private final ContentHandler handler;

    public ContentHandlerResource(ContentHandler contentHandler) {
        this.handler = contentHandler;
    }

    private void internalProcess(DataInputStream dataInputStream) {
        AttributesImpl attributesImpl;
        int readUnsignedByte = dataInputStream.readUnsignedByte();
        if (readUnsignedByte == 1) {
            this.handler.startDocument();
        } else if (readUnsignedByte == 2) {
            this.handler.endDocument();
        } else if (readUnsignedByte == 3) {
            this.handler.startPrefixMapping(readString(dataInputStream), readString(dataInputStream));
        } else if (readUnsignedByte == 4) {
            this.handler.endPrefixMapping(readString(dataInputStream));
        } else {
            if (readUnsignedByte == 5) {
                String readString = readString(dataInputStream);
                String readString2 = readString(dataInputStream);
                String readString3 = readString(dataInputStream);
                int readInt = dataInputStream.readInt();
                if (readInt >= 0) {
                    attributesImpl = new AttributesImpl();
                    for (int i10 = 0; i10 < readInt; i10++) {
                        attributesImpl.addAttribute(readString(dataInputStream), readString(dataInputStream), readString(dataInputStream), readString(dataInputStream), readString(dataInputStream));
                    }
                } else {
                    attributesImpl = null;
                }
                this.handler.startElement(readString, readString2, readString3, attributesImpl);
            } else if (readUnsignedByte == 6) {
                this.handler.endElement(readString(dataInputStream), readString(dataInputStream), readString(dataInputStream));
            } else if (readUnsignedByte == 7) {
                char[] readCharacters = readCharacters(dataInputStream);
                this.handler.characters(readCharacters, 0, readCharacters.length);
            } else if (readUnsignedByte == 8) {
                char[] readCharacters2 = readCharacters(dataInputStream);
                this.handler.characters(readCharacters2, 0, readCharacters2.length);
            } else if (readUnsignedByte == 9) {
                this.handler.processingInstruction(readString(dataInputStream), readString(dataInputStream));
            } else if (readUnsignedByte == 10) {
                this.handler.skippedEntity(readString(dataInputStream));
            }
        }
    }

    private char[] readCharacters(DataInputStream dataInputStream) {
        return readStringUTF(dataInputStream).toCharArray();
    }

    private String readString(DataInputStream dataInputStream) {
        if (dataInputStream.readBoolean()) {
            return readStringUTF(dataInputStream);
        }
        return null;
    }

    private String readStringUTF(DataInputStream dataInputStream) {
        int readInt = dataInputStream.readInt();
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < readInt; i10++) {
            sb2.append(dataInputStream.readUTF());
        }
        return sb2.toString();
    }

    @Override // org.apache.tika.fork.ForkResource
    public Throwable process(DataInputStream dataInputStream, DataOutputStream dataOutputStream) {
        try {
            internalProcess(dataInputStream);
            return null;
        } catch (SAXException e10) {
            return e10;
        }
    }
}
