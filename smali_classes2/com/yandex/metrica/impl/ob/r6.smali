.class public Lcom/yandex/metrica/impl/ob/r6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/ob/r6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/r6;->c:Landroid/util/SparseArray;

    .line 7
    .line 8
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->D:Lcom/yandex/metrica/impl/ob/a1;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-instance v2, Lcom/yandex/metrica/impl/ob/r6;

    .line 15
    .line 16
    const-string v3, "jvm"

    .line 17
    .line 18
    const-string v4, "binder"

    .line 19
    .line 20
    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/r6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/yandex/metrica/impl/ob/r6;->c:Landroid/util/SparseArray;

    .line 27
    .line 28
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->G:Lcom/yandex/metrica/impl/ob/a1;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    new-instance v2, Lcom/yandex/metrica/impl/ob/r6;

    .line 35
    .line 36
    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/r6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lcom/yandex/metrica/impl/ob/r6;->c:Landroid/util/SparseArray;

    .line 43
    .line 44
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->F:Lcom/yandex/metrica/impl/ob/a1;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    new-instance v2, Lcom/yandex/metrica/impl/ob/r6;

    .line 51
    .line 52
    const-string v5, "intent"

    .line 53
    .line 54
    invoke-direct {v2, v3, v5}, Lcom/yandex/metrica/impl/ob/r6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/yandex/metrica/impl/ob/r6;->c:Landroid/util/SparseArray;

    .line 61
    .line 62
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->E:Lcom/yandex/metrica/impl/ob/a1;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    new-instance v2, Lcom/yandex/metrica/impl/ob/r6;

    .line 69
    .line 70
    const-string v5, "file"

    .line 71
    .line 72
    invoke-direct {v2, v3, v5}, Lcom/yandex/metrica/impl/ob/r6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    sget-object v0, Lcom/yandex/metrica/impl/ob/r6;->c:Landroid/util/SparseArray;

    .line 79
    .line 80
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->q:Lcom/yandex/metrica/impl/ob/a1;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    new-instance v2, Lcom/yandex/metrica/impl/ob/r6;

    .line 87
    .line 88
    const-string v3, "jni_native"

    .line 89
    .line 90
    invoke-direct {v2, v3, v5}, Lcom/yandex/metrica/impl/ob/r6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    sget-object v0, Lcom/yandex/metrica/impl/ob/r6;->c:Landroid/util/SparseArray;

    .line 97
    .line 98
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->I:Lcom/yandex/metrica/impl/ob/a1;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    new-instance v2, Lcom/yandex/metrica/impl/ob/r6;

    .line 105
    .line 106
    invoke-direct {v2, v3, v5}, Lcom/yandex/metrica/impl/ob/r6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    sget-object v0, Lcom/yandex/metrica/impl/ob/r6;->c:Landroid/util/SparseArray;

    .line 113
    .line 114
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->r:Lcom/yandex/metrica/impl/ob/a1;

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    new-instance v2, Lcom/yandex/metrica/impl/ob/r6;

    .line 121
    .line 122
    invoke-direct {v2, v3, v5}, Lcom/yandex/metrica/impl/ob/r6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    sget-object v0, Lcom/yandex/metrica/impl/ob/r6;->c:Landroid/util/SparseArray;

    .line 129
    .line 130
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->J:Lcom/yandex/metrica/impl/ob/a1;

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    new-instance v2, Lcom/yandex/metrica/impl/ob/r6;

    .line 137
    .line 138
    invoke-direct {v2, v3, v5}, Lcom/yandex/metrica/impl/ob/r6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    sget-object v0, Lcom/yandex/metrica/impl/ob/r6;->c:Landroid/util/SparseArray;

    .line 145
    .line 146
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->M:Lcom/yandex/metrica/impl/ob/a1;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    new-instance v2, Lcom/yandex/metrica/impl/ob/r6;

    .line 153
    .line 154
    invoke-direct {v2, v3, v5}, Lcom/yandex/metrica/impl/ob/r6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    sget-object v0, Lcom/yandex/metrica/impl/ob/r6;->c:Landroid/util/SparseArray;

    .line 161
    .line 162
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->K:Lcom/yandex/metrica/impl/ob/a1;

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    new-instance v2, Lcom/yandex/metrica/impl/ob/r6;

    .line 169
    .line 170
    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/r6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/r6;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/r6;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static a(I)Lcom/yandex/metrica/impl/ob/r6;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/r6;->c:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/yandex/metrica/impl/ob/r6;

    .line 8
    .line 9
    return-object p0
.end method
