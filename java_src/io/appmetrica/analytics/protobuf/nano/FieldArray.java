package io.appmetrica.analytics.protobuf.nano;
/* loaded from: classes2.dex */
public final class FieldArray implements Cloneable {
    private static final FieldData DELETED = new FieldData();
    private FieldData[] mData;
    private int[] mFieldNumbers;
    private boolean mGarbage;
    private int mSize;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FieldArray() {
        this(10);
    }

    private boolean arrayEquals(int[] iArr, int[] iArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (iArr[i11] != iArr2[i11]) {
                return false;
            }
        }
        return true;
    }

    private int binarySearch(int i10) {
        int i11 = this.mSize - 1;
        int i12 = 0;
        while (i12 <= i11) {
            int i13 = (i12 + i11) >>> 1;
            int i14 = this.mFieldNumbers[i13];
            if (i14 < i10) {
                i12 = i13 + 1;
            } else if (i14 > i10) {
                i11 = i13 - 1;
            } else {
                return i13;
            }
        }
        return ~i12;
    }

    private void gc() {
        int i10 = this.mSize;
        int[] iArr = this.mFieldNumbers;
        FieldData[] fieldDataArr = this.mData;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            FieldData fieldData = fieldDataArr[i12];
            if (fieldData != DELETED) {
                if (i12 != i11) {
                    iArr[i11] = iArr[i12];
                    fieldDataArr[i11] = fieldData;
                    fieldDataArr[i12] = null;
                }
                i11++;
            }
        }
        this.mGarbage = false;
        this.mSize = i11;
    }

    private int idealByteArraySize(int i10) {
        for (int i11 = 4; i11 < 32; i11++) {
            int i12 = (1 << i11) - 12;
            if (i10 <= i12) {
                return i12;
            }
        }
        return i10;
    }

    private int idealIntArraySize(int i10) {
        return idealByteArraySize(i10 * 4) / 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FieldData dataAt(int i10) {
        if (this.mGarbage) {
            gc();
        }
        return this.mData[i10];
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FieldArray)) {
            return false;
        }
        FieldArray fieldArray = (FieldArray) obj;
        if (size() != fieldArray.size()) {
            return false;
        }
        if (arrayEquals(this.mFieldNumbers, fieldArray.mFieldNumbers, this.mSize) && arrayEquals(this.mData, fieldArray.mData, this.mSize)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FieldData get(int i10) {
        FieldData fieldData;
        int binarySearch = binarySearch(i10);
        if (binarySearch >= 0 && (fieldData = this.mData[binarySearch]) != DELETED) {
            return fieldData;
        }
        return null;
    }

    public int hashCode() {
        if (this.mGarbage) {
            gc();
        }
        int i10 = 17;
        for (int i11 = 0; i11 < this.mSize; i11++) {
            i10 = (((i10 * 31) + this.mFieldNumbers[i11]) * 31) + this.mData[i11].hashCode();
        }
        return i10;
    }

    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void put(int i10, FieldData fieldData) {
        int binarySearch = binarySearch(i10);
        if (binarySearch >= 0) {
            this.mData[binarySearch] = fieldData;
            return;
        }
        int i11 = ~binarySearch;
        int i12 = this.mSize;
        if (i11 < i12) {
            FieldData[] fieldDataArr = this.mData;
            if (fieldDataArr[i11] == DELETED) {
                this.mFieldNumbers[i11] = i10;
                fieldDataArr[i11] = fieldData;
                return;
            }
        }
        if (this.mGarbage && i12 >= this.mFieldNumbers.length) {
            gc();
            i11 = ~binarySearch(i10);
        }
        int i13 = this.mSize;
        if (i13 >= this.mFieldNumbers.length) {
            int idealIntArraySize = idealIntArraySize(i13 + 1);
            int[] iArr = new int[idealIntArraySize];
            FieldData[] fieldDataArr2 = new FieldData[idealIntArraySize];
            int[] iArr2 = this.mFieldNumbers;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            FieldData[] fieldDataArr3 = this.mData;
            System.arraycopy(fieldDataArr3, 0, fieldDataArr2, 0, fieldDataArr3.length);
            this.mFieldNumbers = iArr;
            this.mData = fieldDataArr2;
        }
        int i14 = this.mSize - i11;
        if (i14 != 0) {
            int[] iArr3 = this.mFieldNumbers;
            int i15 = i11 + 1;
            System.arraycopy(iArr3, i11, iArr3, i15, i14);
            FieldData[] fieldDataArr4 = this.mData;
            System.arraycopy(fieldDataArr4, i11, fieldDataArr4, i15, this.mSize - i11);
        }
        this.mFieldNumbers[i11] = i10;
        this.mData[i11] = fieldData;
        this.mSize++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void remove(int i10) {
        int binarySearch = binarySearch(i10);
        if (binarySearch >= 0) {
            FieldData[] fieldDataArr = this.mData;
            FieldData fieldData = fieldDataArr[binarySearch];
            FieldData fieldData2 = DELETED;
            if (fieldData != fieldData2) {
                fieldDataArr[binarySearch] = fieldData2;
                this.mGarbage = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int size() {
        if (this.mGarbage) {
            gc();
        }
        return this.mSize;
    }

    FieldArray(int i10) {
        this.mGarbage = false;
        int idealIntArraySize = idealIntArraySize(i10);
        this.mFieldNumbers = new int[idealIntArraySize];
        this.mData = new FieldData[idealIntArraySize];
        this.mSize = 0;
    }

    private boolean arrayEquals(FieldData[] fieldDataArr, FieldData[] fieldDataArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (!fieldDataArr[i11].equals(fieldDataArr2[i11])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: clone */
    public final FieldArray m1clone() {
        int size = size();
        FieldArray fieldArray = new FieldArray(size);
        System.arraycopy(this.mFieldNumbers, 0, fieldArray.mFieldNumbers, 0, size);
        for (int i10 = 0; i10 < size; i10++) {
            FieldData fieldData = this.mData[i10];
            if (fieldData != null) {
                fieldArray.mData[i10] = fieldData.m2clone();
            }
        }
        fieldArray.mSize = size;
        return fieldArray;
    }
}
