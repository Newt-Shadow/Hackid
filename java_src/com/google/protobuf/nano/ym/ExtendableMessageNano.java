package com.google.protobuf.nano.ym;
/* loaded from: classes.dex */
public abstract class ExtendableMessageNano extends MessageNano {
    protected FieldArray unknownFieldData;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.nano.ym.MessageNano
    public int computeSerializedSize() {
        if (this.unknownFieldData != null) {
            int i10 = 0;
            for (int i11 = 0; i11 < this.unknownFieldData.size(); i11++) {
                i10 += this.unknownFieldData.dataAt(i11).computeSerializedSize();
            }
            return i10;
        }
        return 0;
    }

    public final Object getExtension(Extension extension) {
        FieldData fieldData;
        FieldArray fieldArray = this.unknownFieldData;
        if (fieldArray == null || (fieldData = fieldArray.get(WireFormatNano.getTagFieldNumber(extension.tag))) == null) {
            return null;
        }
        return fieldData.getValue(extension);
    }

    public final boolean hasExtension(Extension extension) {
        FieldArray fieldArray = this.unknownFieldData;
        return (fieldArray == null || fieldArray.get(WireFormatNano.getTagFieldNumber(extension.tag)) == null) ? false : true;
    }

    public final ExtendableMessageNano setExtension(Extension extension, Object obj) {
        int tagFieldNumber = WireFormatNano.getTagFieldNumber(extension.tag);
        FieldData fieldData = null;
        if (obj == null) {
            FieldArray fieldArray = this.unknownFieldData;
            if (fieldArray != null) {
                fieldArray.remove(tagFieldNumber);
                if (this.unknownFieldData.isEmpty()) {
                    this.unknownFieldData = null;
                }
            }
        } else {
            FieldArray fieldArray2 = this.unknownFieldData;
            if (fieldArray2 == null) {
                this.unknownFieldData = new FieldArray();
            } else {
                fieldData = fieldArray2.get(tagFieldNumber);
            }
            if (fieldData == null) {
                this.unknownFieldData.put(tagFieldNumber, new FieldData(extension, obj));
            } else {
                fieldData.setValue(extension, obj);
            }
        }
        return this;
    }

    protected final boolean storeUnknownField(CodedInputByteBufferNano codedInputByteBufferNano, int i10) {
        FieldData fieldData;
        int position = codedInputByteBufferNano.getPosition();
        if (codedInputByteBufferNano.skipField(i10)) {
            int tagFieldNumber = WireFormatNano.getTagFieldNumber(i10);
            UnknownFieldData unknownFieldData = new UnknownFieldData(i10, codedInputByteBufferNano.getData(position, codedInputByteBufferNano.getPosition() - position));
            FieldArray fieldArray = this.unknownFieldData;
            if (fieldArray == null) {
                this.unknownFieldData = new FieldArray();
                fieldData = null;
            } else {
                fieldData = fieldArray.get(tagFieldNumber);
            }
            if (fieldData == null) {
                fieldData = new FieldData();
                this.unknownFieldData.put(tagFieldNumber, fieldData);
            }
            fieldData.addUnknownField(unknownFieldData);
            return true;
        }
        return false;
    }

    protected final boolean unknownFieldDataEquals(ExtendableMessageNano extendableMessageNano) {
        FieldArray fieldArray = this.unknownFieldData;
        if (fieldArray == null || fieldArray.isEmpty()) {
            FieldArray fieldArray2 = extendableMessageNano.unknownFieldData;
            return fieldArray2 == null || fieldArray2.isEmpty();
        }
        return this.unknownFieldData.equals(extendableMessageNano.unknownFieldData);
    }

    protected final int unknownFieldDataHashCode() {
        FieldArray fieldArray = this.unknownFieldData;
        if (fieldArray == null || fieldArray.isEmpty()) {
            return 0;
        }
        return this.unknownFieldData.hashCode();
    }

    @Override // com.google.protobuf.nano.ym.MessageNano
    public void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (this.unknownFieldData == null) {
            return;
        }
        for (int i10 = 0; i10 < this.unknownFieldData.size(); i10++) {
            this.unknownFieldData.dataAt(i10).writeTo(codedOutputByteBufferNano);
        }
    }
}
