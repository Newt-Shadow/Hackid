package org.apache.tika.fork;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
/* loaded from: classes2.dex */
class InputStreamProxy extends InputStream implements ForkProxy {
    private static final long serialVersionUID = 4350939227765568438L;
    private transient DataInputStream input;
    private transient DataOutputStream output;
    private final int resource;

    public InputStreamProxy(int i10) {
        this.resource = i10;
    }

    @Override // org.apache.tika.fork.ForkProxy
    public void init(DataInputStream dataInputStream, DataOutputStream dataOutputStream) {
        this.input = dataInputStream;
        this.output = dataOutputStream;
    }

    @Override // java.io.InputStream
    public int read() {
        this.output.writeByte(3);
        this.output.writeByte(this.resource);
        this.output.writeInt(1);
        this.output.flush();
        int readInt = this.input.readInt();
        return readInt == 1 ? this.input.readUnsignedByte() : readInt;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        this.output.writeByte(3);
        this.output.writeByte(this.resource);
        this.output.writeInt(i11);
        this.output.flush();
        int readInt = this.input.readInt();
        if (readInt > 0) {
            this.input.readFully(bArr, i10, readInt);
        }
        return readInt;
    }
}
