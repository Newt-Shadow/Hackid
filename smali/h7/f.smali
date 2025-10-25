.class public Lh7/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh7/f$b;,
        Lh7/f$a;,
        Lh7/f$c;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/Object;

.field static final l:Ljava/util/Map;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lh7/n;

.field private final d:Lk7/n;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Lk7/w;

.field private final h:Lk8/b;

.field private final i:Ljava/util/List;

.field private final j:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lh7/f;->k:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lr/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lr/a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lh7/f;->l:Ljava/util/Map;

    .line 14
    .line 15
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lh7/n;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lh7/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lh7/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lh7/f;->i:Ljava/util/List;

    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lh7/f;->j:Ljava/util/List;

    .line 32
    .line 33
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/content/Context;

    .line 38
    .line 39
    iput-object v0, p0, Lh7/f;->a:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {p2}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iput-object p2, p0, Lh7/f;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p3}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Lh7/n;

    .line 52
    .line 53
    iput-object p2, p0, Lh7/f;->c:Lh7/n;

    .line 54
    .line 55
    invoke-static {}, Lcom/google/firebase/provider/FirebaseInitProvider;->b()Lh7/o;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const-string v0, "Firebase"

    .line 60
    .line 61
    invoke-static {v0}, Ly8/c;->b(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v0, "ComponentDiscovery"

    .line 65
    .line 66
    invoke-static {v0}, Ly8/c;->b(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-class v0, Lcom/google/firebase/components/ComponentDiscoveryService;

    .line 70
    .line 71
    invoke-static {p1, v0}, Lk7/f;->c(Landroid/content/Context;Ljava/lang/Class;)Lk7/f;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lk7/f;->b()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {}, Ly8/c;->a()V

    .line 80
    .line 81
    .line 82
    const-string v2, "Runtime"

    .line 83
    .line 84
    invoke-static {v2}, Ly8/c;->b(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sget-object v2, Ll7/l;->a:Ll7/l;

    .line 88
    .line 89
    invoke-static {v2}, Lk7/n;->l(Ljava/util/concurrent/Executor;)Lk7/n$b;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2, v0}, Lk7/n$b;->d(Ljava/util/Collection;)Lk7/n$b;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v2, Lcom/google/firebase/FirebaseCommonRegistrar;

    .line 98
    .line 99
    invoke-direct {v2}, Lcom/google/firebase/FirebaseCommonRegistrar;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Lk7/n$b;->c(Lcom/google/firebase/components/ComponentRegistrar;)Lk7/n$b;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    new-instance v2, Lcom/google/firebase/concurrent/ExecutorsRegistrar;

    .line 107
    .line 108
    invoke-direct {v2}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2}, Lk7/n$b;->c(Lcom/google/firebase/components/ComponentRegistrar;)Lk7/n$b;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-class v2, Landroid/content/Context;

    .line 116
    .line 117
    new-array v3, v1, [Ljava/lang/Class;

    .line 118
    .line 119
    invoke-static {p1, v2, v3}, Lk7/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lk7/c;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Lk7/n$b;->b(Lk7/c;)Lk7/n$b;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-class v2, Lh7/f;

    .line 128
    .line 129
    new-array v3, v1, [Ljava/lang/Class;

    .line 130
    .line 131
    invoke-static {p0, v2, v3}, Lk7/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lk7/c;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v0, v2}, Lk7/n$b;->b(Lk7/c;)Lk7/n$b;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const-class v2, Lh7/n;

    .line 140
    .line 141
    new-array v3, v1, [Ljava/lang/Class;

    .line 142
    .line 143
    invoke-static {p3, v2, v3}, Lk7/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lk7/c;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    invoke-virtual {v0, p3}, Lk7/n$b;->b(Lk7/c;)Lk7/n$b;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    new-instance v0, Ly8/b;

    .line 152
    .line 153
    invoke-direct {v0}, Ly8/b;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p3, v0}, Lk7/n$b;->g(Lk7/i;)Lk7/n$b;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    invoke-static {p1}, Lz/o;->a(Landroid/content/Context;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    .line 166
    invoke-static {}, Lcom/google/firebase/provider/FirebaseInitProvider;->c()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    .line 172
    const-class v0, Lh7/o;

    .line 173
    .line 174
    new-array v1, v1, [Ljava/lang/Class;

    .line 175
    .line 176
    invoke-static {p2, v0, v1}, Lk7/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lk7/c;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {p3, p2}, Lk7/n$b;->b(Lk7/c;)Lk7/n$b;

    .line 181
    .line 182
    .line 183
    :cond_0
    invoke-virtual {p3}, Lk7/n$b;->e()Lk7/n;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    iput-object p2, p0, Lh7/f;->d:Lk7/n;

    .line 188
    .line 189
    invoke-static {}, Ly8/c;->a()V

    .line 190
    .line 191
    .line 192
    new-instance p3, Lk7/w;

    .line 193
    .line 194
    new-instance v0, Lh7/d;

    .line 195
    .line 196
    invoke-direct {v0, p0, p1}, Lh7/d;-><init>(Lh7/f;Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    invoke-direct {p3, v0}, Lk7/w;-><init>(Lk8/b;)V

    .line 200
    .line 201
    .line 202
    iput-object p3, p0, Lh7/f;->g:Lk7/w;

    .line 203
    .line 204
    const-class p1, Li8/f;

    .line 205
    .line 206
    invoke-interface {p2, p1}, Lk7/d;->a(Ljava/lang/Class;)Lk8/b;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    iput-object p1, p0, Lh7/f;->h:Lk8/b;

    .line 211
    .line 212
    new-instance p1, Lh7/e;

    .line 213
    .line 214
    invoke-direct {p1, p0}, Lh7/e;-><init>(Lh7/f;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, p1}, Lh7/f;->g(Lh7/f$a;)V

    .line 218
    .line 219
    .line 220
    invoke-static {}, Ly8/c;->a()V

    .line 221
    .line 222
    .line 223
    return-void
.end method

.method private synthetic A(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lh7/f;->h:Lk8/b;

    .line 4
    .line 5
    invoke-interface {p1}, Lk8/b;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Li8/f;

    .line 10
    .line 11
    invoke-virtual {p1}, Li8/f;->l()Lm6/Task;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private static B(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private C(Z)V
    .locals 2

    .line 1
    const-string v0, "FirebaseApp"

    .line 2
    .line 3
    const-string v1, "Notifying background state change listeners."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lh7/f;->i:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lh7/f$a;

    .line 25
    .line 26
    invoke-interface {v1, p1}, Lh7/f$a;->a(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method private D()V
    .locals 4

    .line 1
    iget-object v0, p0, Lh7/f;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lh7/g;

    .line 18
    .line 19
    iget-object v2, p0, Lh7/f;->b:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p0, Lh7/f;->c:Lh7/n;

    .line 22
    .line 23
    invoke-interface {v1, v2, v3}, Lh7/g;->a(Ljava/lang/String;Lh7/n;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public static synthetic a(Lh7/f;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lh7/f;->A(Z)V

    return-void
.end method

.method public static synthetic b(Lh7/f;Landroid/content/Context;)Lp8/a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lh7/f;->z(Landroid/content/Context;)Lp8/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lh7/f;->k:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d(Lh7/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh7/f;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lh7/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lh7/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lh7/f;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lh7/f;->C(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh7/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    const-string v1, "FirebaseApp was deleted"

    .line 10
    .line 11
    invoke-static {v0, v1}, Ln5/q;->o(ZLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static l()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lh7/f;->k:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    sget-object v2, Lh7/f;->l:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lh7/f;

    .line 30
    .line 31
    invoke-virtual {v3}, Lh7/f;->q()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw v0
.end method

.method public static n(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    .line 1
    sget-object p0, Lh7/f;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    sget-object v1, Lh7/f;->l:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method

.method public static o()Lh7/f;
    .locals 4

    .line 1
    sget-object v0, Lh7/f;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lh7/f;->l:Ljava/util/Map;

    .line 5
    .line 6
    const-string v2, "[DEFAULT]"

    .line 7
    .line 8
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lh7/f;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v2, v1, Lh7/f;->h:Lk8/b;

    .line 17
    .line 18
    invoke-interface {v2}, Lk8/b;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Li8/f;

    .line 23
    .line 24
    invoke-virtual {v2}, Li8/f;->l()Lm6/Task;

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-object v1

    .line 29
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "Default FirebaseApp is not initialized in this process "

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/google/android/gms/common/util/n;->a()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v3, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw v1
.end method

.method public static p(Ljava/lang/String;)Lh7/f;
    .locals 4

    .line 1
    sget-object v0, Lh7/f;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lh7/f;->l:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {p0}, Lh7/f;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lh7/f;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object p0, v1, Lh7/f;->h:Lk8/b;

    .line 19
    .line 20
    invoke-interface {p0}, Lk8/b;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Li8/f;

    .line 25
    .line 26
    invoke-virtual {p0}, Li8/f;->l()Lm6/Task;

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-object v1

    .line 31
    :cond_0
    invoke-static {}, Lh7/f;->l()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    const-string v1, ""

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v3, "Available app names: "

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v3, ", "

    .line 55
    .line 56
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :goto_0
    const-string v2, "FirebaseApp with name %s doesn\'t exist. %s"

    .line 68
    .line 69
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method private t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lh7/f;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lz/o;->a(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    const-string v1, "FirebaseApp"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app "

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lh7/f;->q()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lh7/f;->a:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v0}, Lh7/f$c;->a(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "Device unlocked: initializing all Firebase APIs for app "

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lh7/f;->q()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lh7/f;->d:Lk7/n;

    .line 68
    .line 69
    invoke-virtual {p0}, Lh7/f;->y()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v0, v1}, Lk7/n;->o(Z)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lh7/f;->h:Lk8/b;

    .line 77
    .line 78
    invoke-interface {v0}, Lk8/b;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Li8/f;

    .line 83
    .line 84
    invoke-virtual {v0}, Li8/f;->l()Lm6/Task;

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method public static u(Landroid/content/Context;)Lh7/f;
    .locals 3

    .line 1
    sget-object v0, Lh7/f;->k:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lh7/f;->l:Ljava/util/Map;

    .line 5
    .line 6
    const-string v2, "[DEFAULT]"

    .line 7
    .line 8
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lh7/f;->o()Lh7/f;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {p0}, Lh7/n;->a(Landroid/content/Context;)Lh7/n;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const-string p0, "FirebaseApp"

    .line 27
    .line 28
    const-string v1, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project."

    .line 29
    .line 30
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :cond_1
    invoke-static {p0, v1}, Lh7/f;->v(Landroid/content/Context;Lh7/n;)Lh7/f;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    monitor-exit v0

    .line 41
    return-object p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public static v(Landroid/content/Context;Lh7/n;)Lh7/f;
    .locals 1

    .line 1
    const-string v0, "[DEFAULT]"

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lh7/f;->w(Landroid/content/Context;Lh7/n;Ljava/lang/String;)Lh7/f;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static w(Landroid/content/Context;Lh7/n;Ljava/lang/String;)Lh7/f;
    .locals 5

    .line 1
    invoke-static {p0}, Lh7/f$b;->b(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lh7/f;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    sget-object v0, Lh7/f;->k:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lh7/f;->l:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v4, "FirebaseApp name "

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v4, " already exists!"

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v2, v3}, Ln5/q;->o(ZLjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const-string v2, "Application context cannot be null."

    .line 59
    .line 60
    invoke-static {p0, v2}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    new-instance v2, Lh7/f;

    .line 64
    .line 65
    invoke-direct {v2, p0, p2, p1}, Lh7/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lh7/n;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-direct {v2}, Lh7/f;->t()V

    .line 73
    .line 74
    .line 75
    return-object v2

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p0
.end method

.method private synthetic z(Landroid/content/Context;)Lp8/a;
    .locals 4

    .line 1
    new-instance v0, Lp8/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lh7/f;->s()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lh7/f;->d:Lk7/n;

    .line 8
    .line 9
    const-class v3, Lh8/c;

    .line 10
    .line 11
    invoke-interface {v2, v3}, Lk7/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lh8/c;

    .line 16
    .line 17
    invoke-direct {v0, p1, v1, v2}, Lp8/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lh8/c;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method


# virtual methods
.method public E(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lh7/f;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lh7/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    xor-int/lit8 v1, p1, 0x1

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lm5/c;->b()Lm5/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lm5/c;->d()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-direct {p0, p1}, Lh7/f;->C(Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-nez p1, :cond_1

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-direct {p0, p1}, Lh7/f;->C(Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public F(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lh7/f;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lh7/f;->g:Lk7/w;

    .line 5
    .line 6
    invoke-virtual {v0}, Lk7/w;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lp8/a;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lp8/a;->e(Ljava/lang/Boolean;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lh7/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Lh7/f;->b:Ljava/lang/String;

    .line 8
    .line 9
    check-cast p1, Lh7/f;

    .line 10
    .line 11
    invoke-virtual {p1}, Lh7/f;->q()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public g(Lh7/f$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lh7/f;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lh7/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lm5/c;->b()Lm5/c;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lm5/c;->d()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-interface {p1, v0}, Lh7/f$a;->a(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lh7/f;->i:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public h(Lh7/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lh7/f;->i()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lh7/f;->j:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lh7/f;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lh7/f;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v0, Lh7/f;->k:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lh7/f;->l:Ljava/util/Map;

    .line 16
    .line 17
    iget-object v2, p0, Lh7/f;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-direct {p0}, Lh7/f;->D()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v1
.end method

.method public k(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lh7/f;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lh7/f;->d:Lk7/n;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lk7/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public m()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-direct {p0}, Lh7/f;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lh7/f;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lh7/f;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lh7/f;->b:Ljava/lang/String;

    .line 5
    .line 6
    return-object v0
.end method

.method public r()Lh7/n;
    .locals 1

    .line 1
    invoke-direct {p0}, Lh7/f;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lh7/f;->c:Lh7/n;

    .line 5
    .line 6
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lh7/f;->q()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/common/util/c;->a([B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "+"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lh7/f;->r()Lh7/n;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lh7/n;->c()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/google/android/gms/common/util/c;->a([B)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ln5/o;->c(Ljava/lang/Object;)Ln5/o$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "name"

    .line 6
    .line 7
    iget-object v2, p0, Lh7/f;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ln5/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ln5/o$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "options"

    .line 14
    .line 15
    iget-object v2, p0, Lh7/f;->c:Lh7/n;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ln5/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ln5/o$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ln5/o$a;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lh7/f;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lh7/f;->g:Lk7/w;

    .line 5
    .line 6
    invoke-virtual {v0}, Lk7/w;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lp8/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lp8/a;->b()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public y()Z
    .locals 2

    .line 1
    const-string v0, "[DEFAULT]"

    .line 2
    .line 3
    invoke-virtual {p0}, Lh7/f;->q()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
