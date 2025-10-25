.class Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/a;)Lcom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;


# direct methods
.method constructor <init>(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->c:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->a:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->b:Ljava/util/Map;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lc9/a;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/gson/internal/e0;->a(Lc9/a;)Lcom/google/gson/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/gson/i;->l()Lcom/google/gson/l;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->c:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->c(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/gson/l;->C(Ljava/lang/String;)Lcom/google/gson/i;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "cannot deserialize "

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/gson/i;->n()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->a:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/google/gson/TypeAdapter;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Lcom/google/gson/TypeAdapter;->a(Lcom/google/gson/i;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_0
    new-instance p1, Lcom/google/gson/m;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->c:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->a(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;)Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, " subtype named "

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, "; did you forget to register a subtype?"

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {p1, v0}, Lcom/google/gson/m;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_1
    new-instance p1, Lcom/google/gson/m;

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->c:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    .line 93
    .line 94
    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->a(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;)Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, " because it does not define a field named "

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->c:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    .line 107
    .line 108
    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->c(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-direct {p1, v0}, Lcom/google/gson/m;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1
.end method

.method public e(Lc9/c;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->c:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->b(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->b:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/google/gson/TypeAdapter;

    .line 24
    .line 25
    const-string v3, "cannot serialize "

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v2, p2}, Lcom/google/gson/TypeAdapter;->d(Ljava/lang/Object;)Lcom/google/gson/i;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Lcom/google/gson/i;->l()Lcom/google/gson/l;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->c:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->c(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p2, v2}, Lcom/google/gson/l;->B(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    new-instance v0, Lcom/google/gson/l;

    .line 50
    .line 51
    invoke-direct {v0}, Lcom/google/gson/l;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->c:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    .line 55
    .line 56
    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->c(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v3, Lcom/google/gson/n;

    .line 61
    .line 62
    invoke-direct {v3, v1}, Lcom/google/gson/n;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/l;->t(Ljava/lang/String;Lcom/google/gson/i;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/google/gson/l;->y()Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_0

    .line 81
    .line 82
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/util/Map$Entry;

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Ljava/lang/String;

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/google/gson/i;

    .line 99
    .line 100
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/l;->t(Ljava/lang/String;Lcom/google/gson/i;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    invoke-static {v0, p1}, Lcom/google/gson/internal/e0;->b(Lcom/google/gson/i;Lc9/c;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_1
    new-instance p1, Lcom/google/gson/m;

    .line 109
    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v0, " because it already defines a field named "

    .line 126
    .line 127
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->c:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    .line 131
    .line 132
    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->c(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-direct {p1, p2}, Lcom/google/gson/m;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p1

    .line 147
    :cond_2
    new-instance p1, Lcom/google/gson/m;

    .line 148
    .line 149
    new-instance p2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v0, "; did you forget to register a subtype?"

    .line 165
    .line 166
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-direct {p1, p2}, Lcom/google/gson/m;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1
.end method
