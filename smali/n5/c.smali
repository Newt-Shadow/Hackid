.class public abstract Ln5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln5/c$a;,
        Ln5/c$b;,
        Ln5/c$d;,
        Ln5/c$c;,
        Ln5/c$e;
    }
.end annotation


# static fields
.field public static final D:[Ljava/lang/String;

.field private static final E:[Ll5/d;


# instance fields
.field private A:Z

.field private volatile B:Ln5/j1;

.field protected C:Ljava/util/concurrent/atomic/AtomicInteger;

.field private a:I

.field private b:J

.field private c:J

.field private d:I

.field private e:J

.field private volatile f:Ljava/lang/String;

.field g:Ln5/u1;

.field private final h:Landroid/content/Context;

.field private final i:Landroid/os/Looper;

.field private final j:Ln5/i;

.field private final k:Ll5/g;

.field final l:Landroid/os/Handler;

.field private final m:Ljava/lang/Object;

.field private final n:Ljava/lang/Object;

.field private o:Ln5/m;

.field protected p:Ln5/c$c;

.field private q:Landroid/os/IInterface;

.field private final r:Ljava/util/ArrayList;

.field private s:Ln5/g1;

.field private t:I

.field private final u:Ln5/c$a;

.field private final v:Ln5/c$b;

.field private final w:I

.field private final x:Ljava/lang/String;

.field private volatile y:Ljava/lang/String;

.field private z:Ll5/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [Ll5/d;

    sput-object v0, Ln5/c;->E:[Ll5/d;

    const-string v0, "service_esmobile"

    const-string v1, "service_googleme"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln5/c;->D:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILn5/c$a;Ln5/c$b;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p1}, Ln5/i;->b(Landroid/content/Context;)Ln5/i;

    move-result-object v3

    .line 2
    invoke-static {}, Ll5/g;->f()Ll5/g;

    move-result-object v4

    .line 3
    invoke-static {p4}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p5}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 5
    invoke-direct/range {v0 .. v8}, Ln5/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Ln5/i;Ll5/g;ILn5/c$a;Ln5/c$b;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ln5/i;Ll5/g;ILn5/c$a;Ln5/c$b;Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ln5/c;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ln5/c;->m:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ln5/c;->n:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ln5/c;->r:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput v1, p0, Ln5/c;->t:I

    iput-object v0, p0, Ln5/c;->z:Ll5/b;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ln5/c;->A:Z

    iput-object v0, p0, Ln5/c;->B:Ln5/j1;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ln5/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    .line 8
    invoke-static {p1, v0}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ln5/c;->h:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    .line 9
    invoke-static {p2, p1}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Ln5/c;->i:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 10
    invoke-static {p3, p1}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Ln5/c;->j:Ln5/i;

    const-string p1, "API availability must not be null"

    .line 11
    invoke-static {p4, p1}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Ln5/c;->k:Ll5/g;

    new-instance p1, Ln5/d1;

    .line 12
    invoke-direct {p1, p0, p2}, Ln5/d1;-><init>(Ln5/c;Landroid/os/Looper;)V

    iput-object p1, p0, Ln5/c;->l:Landroid/os/Handler;

    iput p5, p0, Ln5/c;->w:I

    iput-object p6, p0, Ln5/c;->u:Ln5/c$a;

    iput-object p7, p0, Ln5/c;->v:Ln5/c$b;

    iput-object p8, p0, Ln5/c;->x:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic T(Ln5/c;)Ll5/b;
    .locals 0

    .line 1
    iget-object p0, p0, Ln5/c;->z:Ll5/b;

    return-object p0
.end method

.method static bridge synthetic U(Ln5/c;)Ln5/c$a;
    .locals 0

    .line 1
    iget-object p0, p0, Ln5/c;->u:Ln5/c$a;

    return-object p0
.end method

.method static bridge synthetic V(Ln5/c;)Ln5/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Ln5/c;->v:Ln5/c$b;

    return-object p0
.end method

.method static bridge synthetic W(Ln5/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ln5/c;->n:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic Y(Ln5/c;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Ln5/c;->r:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic Z(Ln5/c;Ll5/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln5/c;->z:Ll5/b;

    return-void
.end method

.method static bridge synthetic a0(Ln5/c;Ln5/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln5/c;->o:Ln5/m;

    return-void
.end method

.method static bridge synthetic b0(Ln5/c;ILandroid/os/IInterface;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ln5/c;->i0(ILandroid/os/IInterface;)V

    return-void
.end method

.method static bridge synthetic c0(Ln5/c;Ln5/j1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln5/c;->B:Ln5/j1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ln5/c;->S()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    iget-object p0, p1, Ln5/j1;->d:Ln5/f;

    .line 10
    .line 11
    invoke-static {}, Ln5/r;->b()Ln5/r;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ln5/f;->o()Ln5/s;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-virtual {p1, p0}, Ln5/r;->c(Ln5/s;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method static bridge synthetic d0(Ln5/c;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln5/c;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget v0, p0, Ln5/c;->t:I

    .line 5
    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    const/4 p1, 0x3

    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Ln5/c;->A:Z

    .line 12
    .line 13
    const/4 p1, 0x5

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x4

    .line 16
    :goto_0
    iget-object v0, p0, Ln5/c;->l:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object p0, p0, Ln5/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/16 v1, 0x10

    .line 25
    .line 26
    invoke-virtual {v0, p1, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0
.end method

.method static bridge synthetic f0(Ln5/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ln5/c;->A:Z

    return p0
.end method

.method static bridge synthetic g0(Ln5/c;IILandroid/os/IInterface;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln5/c;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Ln5/c;->t:I

    .line 5
    .line 6
    if-eq v1, p1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0, p2, p3}, Ln5/c;->i0(ILandroid/os/IInterface;)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x1

    .line 16
    :goto_0
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method static bridge synthetic h0(Ln5/c;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln5/c;->A:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ln5/c;->E()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0}, Ln5/c;->B()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ln5/c;->E()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    :catch_0
    :goto_0
    return v1
.end method

.method private final i0(ILandroid/os/IInterface;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x4

    .line 4
    if-eq p1, v2, :cond_0

    .line 5
    .line 6
    move v3, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v3, v1

    .line 9
    :goto_0
    if-nez p2, :cond_1

    .line 10
    .line 11
    move v4, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    move v4, v1

    .line 14
    :goto_1
    if-ne v3, v4, :cond_2

    .line 15
    .line 16
    move v0, v1

    .line 17
    :cond_2
    invoke-static {v0}, Ln5/q;->a(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Ln5/c;->m:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iput p1, p0, Ln5/c;->t:I

    .line 24
    .line 25
    iput-object p2, p0, Ln5/c;->q:Landroid/os/IInterface;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eq p1, v1, :cond_b

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    const/4 v4, 0x3

    .line 32
    if-eq p1, v1, :cond_4

    .line 33
    .line 34
    if-eq p1, v4, :cond_4

    .line 35
    .line 36
    if-eq p1, v2, :cond_3

    .line 37
    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_3
    invoke-static {p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    check-cast p2, Landroid/os/IInterface;

    .line 44
    .line 45
    invoke-virtual {p0, p2}, Ln5/c;->K(Landroid/os/IInterface;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_4
    iget-object v9, p0, Ln5/c;->s:Ln5/g1;

    .line 51
    .line 52
    if-eqz v9, :cond_5

    .line 53
    .line 54
    iget-object p1, p0, Ln5/c;->g:Ln5/u1;

    .line 55
    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    const-string p2, "GmsClient"

    .line 59
    .line 60
    invoke-virtual {p1}, Ln5/u1;->b()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1}, Ln5/u1;->a()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v5, "Calling connect() while still connected, missing disconnect() for "

    .line 74
    .line 75
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, " on "

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iget-object v5, p0, Ln5/c;->j:Ln5/i;

    .line 97
    .line 98
    iget-object p1, p0, Ln5/c;->g:Ln5/u1;

    .line 99
    .line 100
    invoke-virtual {p1}, Ln5/u1;->b()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-static {v6}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Ln5/c;->g:Ln5/u1;

    .line 108
    .line 109
    invoke-virtual {p1}, Ln5/u1;->a()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    const/16 v8, 0x1081

    .line 114
    .line 115
    invoke-virtual {p0}, Ln5/c;->X()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    iget-object p1, p0, Ln5/c;->g:Ln5/u1;

    .line 120
    .line 121
    invoke-virtual {p1}, Ln5/u1;->c()Z

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    invoke-virtual/range {v5 .. v11}, Ln5/i;->g(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Ln5/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 131
    .line 132
    .line 133
    :cond_5
    new-instance p1, Ln5/g1;

    .line 134
    .line 135
    iget-object p2, p0, Ln5/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    invoke-direct {p1, p0, p2}, Ln5/g1;-><init>(Ln5/c;I)V

    .line 142
    .line 143
    .line 144
    iput-object p1, p0, Ln5/c;->s:Ln5/g1;

    .line 145
    .line 146
    iget p2, p0, Ln5/c;->t:I

    .line 147
    .line 148
    if-ne p2, v4, :cond_6

    .line 149
    .line 150
    invoke-virtual {p0}, Ln5/c;->B()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    if-eqz p2, :cond_6

    .line 155
    .line 156
    new-instance p2, Ln5/u1;

    .line 157
    .line 158
    invoke-virtual {p0}, Ln5/c;->y()Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {p0}, Ln5/c;->B()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    const/4 v7, 0x1

    .line 171
    const/16 v8, 0x1081

    .line 172
    .line 173
    const/4 v9, 0x0

    .line 174
    move-object v4, p2

    .line 175
    invoke-direct/range {v4 .. v9}, Ln5/u1;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_6
    new-instance p2, Ln5/u1;

    .line 180
    .line 181
    invoke-virtual {p0}, Ln5/c;->G()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-virtual {p0}, Ln5/c;->F()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    const/4 v7, 0x0

    .line 190
    const/16 v8, 0x1081

    .line 191
    .line 192
    invoke-virtual {p0}, Ln5/c;->I()Z

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    move-object v4, p2

    .line 197
    invoke-direct/range {v4 .. v9}, Ln5/u1;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 198
    .line 199
    .line 200
    :goto_2
    iput-object p2, p0, Ln5/c;->g:Ln5/u1;

    .line 201
    .line 202
    invoke-virtual {p2}, Ln5/u1;->c()Z

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    if-eqz p2, :cond_8

    .line 207
    .line 208
    invoke-virtual {p0}, Ln5/c;->j()I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    const v1, 0x1110e58

    .line 213
    .line 214
    .line 215
    if-lt p2, v1, :cond_7

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 219
    .line 220
    iget-object p2, p0, Ln5/c;->g:Ln5/u1;

    .line 221
    .line 222
    invoke-virtual {p2}, Ln5/u1;->b()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    const-string v1, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    .line 227
    .line 228
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p1

    .line 240
    :cond_8
    :goto_3
    iget-object p2, p0, Ln5/c;->j:Ln5/i;

    .line 241
    .line 242
    iget-object v1, p0, Ln5/c;->g:Ln5/u1;

    .line 243
    .line 244
    invoke-virtual {v1}, Ln5/u1;->b()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-static {v1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    iget-object v2, p0, Ln5/c;->g:Ln5/u1;

    .line 252
    .line 253
    invoke-virtual {v2}, Ln5/u1;->a()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {p0}, Ln5/c;->X()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    iget-object v5, p0, Ln5/c;->g:Ln5/u1;

    .line 262
    .line 263
    invoke-virtual {v5}, Ln5/u1;->c()Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    invoke-virtual {p0}, Ln5/c;->w()Ljava/util/concurrent/Executor;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    new-instance v7, Ln5/n1;

    .line 272
    .line 273
    const/16 v8, 0x1081

    .line 274
    .line 275
    invoke-direct {v7, v1, v2, v8, v5}, Ln5/n1;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p2, v7, p1, v4, v6}, Ln5/i;->e(Ln5/n1;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Ll5/b;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p1}, Ll5/b;->n()Z

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    if-nez p2, :cond_c

    .line 287
    .line 288
    const-string p2, "GmsClient"

    .line 289
    .line 290
    iget-object v1, p0, Ln5/c;->g:Ln5/u1;

    .line 291
    .line 292
    invoke-virtual {v1}, Ln5/u1;->b()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    iget-object v2, p0, Ln5/c;->g:Ln5/u1;

    .line 297
    .line 298
    invoke-virtual {v2}, Ln5/u1;->a()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    const-string v5, "unable to connect to service: "

    .line 308
    .line 309
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v1, " on "

    .line 316
    .line 317
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1}, Ll5/b;->g()I

    .line 331
    .line 332
    .line 333
    move-result p2

    .line 334
    const/4 v1, -0x1

    .line 335
    if-ne p2, v1, :cond_9

    .line 336
    .line 337
    const/16 p2, 0x10

    .line 338
    .line 339
    goto :goto_4

    .line 340
    :cond_9
    invoke-virtual {p1}, Ll5/b;->g()I

    .line 341
    .line 342
    .line 343
    move-result p2

    .line 344
    :goto_4
    invoke-virtual {p1}, Ll5/b;->l()Landroid/app/PendingIntent;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    if-eqz v1, :cond_a

    .line 349
    .line 350
    new-instance v3, Landroid/os/Bundle;

    .line 351
    .line 352
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 353
    .line 354
    .line 355
    const-string v1, "pendingIntent"

    .line 356
    .line 357
    invoke-virtual {p1}, Ll5/b;->l()Landroid/app/PendingIntent;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 362
    .line 363
    .line 364
    :cond_a
    iget-object p1, p0, Ln5/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 365
    .line 366
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 367
    .line 368
    .line 369
    move-result p1

    .line 370
    invoke-virtual {p0, p2, v3, p1}, Ln5/c;->e0(ILandroid/os/Bundle;I)V

    .line 371
    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_b
    iget-object v8, p0, Ln5/c;->s:Ln5/g1;

    .line 375
    .line 376
    if-eqz v8, :cond_c

    .line 377
    .line 378
    iget-object v4, p0, Ln5/c;->j:Ln5/i;

    .line 379
    .line 380
    iget-object p1, p0, Ln5/c;->g:Ln5/u1;

    .line 381
    .line 382
    invoke-virtual {p1}, Ln5/u1;->b()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    invoke-static {v5}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    iget-object p1, p0, Ln5/c;->g:Ln5/u1;

    .line 390
    .line 391
    invoke-virtual {p1}, Ln5/u1;->a()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    const/16 v7, 0x1081

    .line 396
    .line 397
    invoke-virtual {p0}, Ln5/c;->X()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v9

    .line 401
    iget-object p1, p0, Ln5/c;->g:Ln5/u1;

    .line 402
    .line 403
    invoke-virtual {p1}, Ln5/u1;->c()Z

    .line 404
    .line 405
    .line 406
    move-result v10

    .line 407
    invoke-virtual/range {v4 .. v10}, Ln5/i;->g(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    .line 408
    .line 409
    .line 410
    iput-object v3, p0, Ln5/c;->s:Ln5/g1;

    .line 411
    .line 412
    :cond_c
    :goto_5
    monitor-exit v0

    .line 413
    return-void

    .line 414
    :catchall_0
    move-exception p1

    .line 415
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    throw p1
.end method


# virtual methods
.method protected A()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected B()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected C()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final D()Landroid/os/IInterface;
    .locals 3

    .line 1
    iget-object v0, p0, Ln5/c;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Ln5/c;->t:I

    .line 5
    .line 6
    const/4 v2, 0x5

    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ln5/c;->r()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Ln5/c;->q:Landroid/os/IInterface;

    .line 13
    .line 14
    const-string v2, "Client is connected but service is null"

    .line 15
    .line 16
    invoke-static {v1, v2}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    check-cast v1, Landroid/os/IInterface;

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :cond_0
    new-instance v1, Landroid/os/DeadObjectException;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw v1

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method

.method protected abstract E()Ljava/lang/String;
.end method

.method protected abstract F()Ljava/lang/String;
.end method

.method protected G()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method public H()Ln5/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/c;->B:Ln5/j1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Ln5/j1;->d:Ln5/f;

    return-object v0
.end method

.method protected I()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln5/c;->j()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xc9e4920

    .line 6
    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/c;->B:Ln5/j1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected K(Landroid/os/IInterface;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Ln5/c;->c:J

    .line 6
    .line 7
    return-void
.end method

.method protected L(Ll5/b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ll5/b;->g()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Ln5/c;->d:I

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Ln5/c;->e:J

    .line 12
    .line 13
    return-void
.end method

.method protected M(I)V
    .locals 2

    .line 1
    iput p1, p0, Ln5/c;->a:I

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Ln5/c;->b:J

    .line 8
    .line 9
    return-void
.end method

.method protected N(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 1

    .line 1
    new-instance v0, Ln5/h1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Ln5/h1;-><init>(Ln5/c;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ln5/c;->l:Landroid/os/Handler;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    const/4 p3, -0x1

    .line 10
    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p0, Ln5/c;->l:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public O()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public P(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln5/c;->y:Ljava/lang/String;

    return-void
.end method

.method public Q(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln5/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Ln5/c;->l:Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v2, 0x6

    .line 10
    invoke-virtual {v1, v2, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Ln5/c;->l:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected R(Ln5/c$c;ILandroid/app/PendingIntent;)V
    .locals 2

    .line 1
    const-string v0, "Connection progress callbacks cannot be null."

    .line 2
    .line 3
    invoke-static {p1, v0}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ln5/c;->p:Ln5/c$c;

    .line 7
    .line 8
    iget-object p1, p0, Ln5/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Ln5/c;->l:Landroid/os/Handler;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p2, p0, Ln5/c;->l:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public S()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method protected final X()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/c;->x:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ln5/c;->h:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    return-object v0
.end method

.method public a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ln5/c;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Ln5/c;->t:I

    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln5/c;->f:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ln5/c;->g()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Ln5/c$c;)V
    .locals 1

    .line 1
    const-string v0, "Connection progress callbacks cannot be null."

    .line 2
    .line 3
    invoke-static {p1, v0}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ln5/c;->p:Ln5/c$c;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Ln5/c;->i0(ILandroid/os/IInterface;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public e()Z
    .locals 4

    .line 1
    iget-object v0, p0, Ln5/c;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Ln5/c;->t:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v1, v2, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    :cond_1
    :goto_0
    monitor-exit v0

    .line 16
    return v3

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method protected final e0(ILandroid/os/Bundle;I)V
    .locals 2

    .line 1
    new-instance v0, Ln5/i1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Ln5/i1;-><init>(Ln5/c;ILandroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ln5/c;->l:Landroid/os/Handler;

    .line 7
    .line 8
    const/4 p2, 0x7

    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p0, Ln5/c;->l:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln5/c;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Ln5/c;->g:Ln5/u1;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ln5/u1;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    const-string v1, "Failed to connect when checking package"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln5/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ln5/c;->r:Ljava/util/ArrayList;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Ln5/c;->r:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_0

    .line 17
    .line 18
    iget-object v3, p0, Ln5/c;->r:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ln5/e1;

    .line 25
    .line 26
    invoke-virtual {v3}, Ln5/e1;->d()V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Ln5/c;->r:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    iget-object v1, p0, Ln5/c;->n:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    const/4 v0, 0x0

    .line 42
    :try_start_1
    iput-object v0, p0, Ln5/c;->o:Ln5/m;

    .line 43
    .line 44
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0, v1, v0}, Ln5/c;->i0(ILandroid/os/IInterface;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    throw v0

    .line 53
    :catchall_1
    move-exception v1

    .line 54
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    throw v1
.end method

.method public h(Ln5/c$e;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ln5/c$e;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public abstract j()I
.end method

.method public k(Ln5/k;Ljava/util/Set;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ln5/c;->A()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v15, Ln5/g;

    .line 10
    .line 11
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v4, 0x1f

    .line 14
    .line 15
    if-ge v3, v4, :cond_0

    .line 16
    .line 17
    iget-object v3, v1, Ln5/c;->y:Ljava/lang/String;

    .line 18
    .line 19
    :goto_0
    move-object/from16 v17, v3

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v3, v1, Ln5/c;->y:Ljava/lang/String;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :goto_1
    const/4 v4, 0x6

    .line 26
    iget v5, v1, Ln5/c;->w:I

    .line 27
    .line 28
    sget v6, Ll5/g;->a:I

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    sget-object v9, Ln5/g;->o:[Lcom/google/android/gms/common/api/Scope;

    .line 33
    .line 34
    new-instance v10, Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v11, 0x0

    .line 40
    sget-object v13, Ln5/g;->p:[Ll5/d;

    .line 41
    .line 42
    const/4 v14, 0x1

    .line 43
    const/16 v16, 0x0

    .line 44
    .line 45
    const/16 v18, 0x0

    .line 46
    .line 47
    move-object v3, v15

    .line 48
    move-object v12, v13

    .line 49
    move-object/from16 v19, v15

    .line 50
    .line 51
    move/from16 v15, v16

    .line 52
    .line 53
    move/from16 v16, v18

    .line 54
    .line 55
    invoke-direct/range {v3 .. v17}, Ln5/g;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Ll5/d;[Ll5/d;ZIZLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v3, v1, Ln5/c;->h:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    move-object/from16 v4, v19

    .line 65
    .line 66
    iput-object v3, v4, Ln5/g;->d:Ljava/lang/String;

    .line 67
    .line 68
    iput-object v2, v4, Ln5/g;->g:Landroid/os/Bundle;

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 74
    .line 75
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    .line 80
    .line 81
    iput-object v0, v4, Ln5/g;->f:[Lcom/google/android/gms/common/api/Scope;

    .line 82
    .line 83
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ln5/c;->o()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    invoke-virtual/range {p0 .. p0}, Ln5/c;->u()Landroid/accounts/Account;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-nez v0, :cond_2

    .line 94
    .line 95
    new-instance v0, Landroid/accounts/Account;

    .line 96
    .line 97
    const-string v2, "<<default account>>"

    .line 98
    .line 99
    const-string v3, "com.google"

    .line 100
    .line 101
    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    iput-object v0, v4, Ln5/g;->h:Landroid/accounts/Account;

    .line 105
    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, v4, Ln5/g;->e:Landroid/os/IBinder;

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ln5/c;->O()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    invoke-virtual/range {p0 .. p0}, Ln5/c;->u()Landroid/accounts/Account;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iput-object v0, v4, Ln5/g;->h:Landroid/accounts/Account;

    .line 126
    .line 127
    :cond_4
    :goto_2
    sget-object v0, Ln5/c;->E:[Ll5/d;

    .line 128
    .line 129
    iput-object v0, v4, Ln5/g;->i:[Ll5/d;

    .line 130
    .line 131
    invoke-virtual/range {p0 .. p0}, Ln5/c;->v()[Ll5/d;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iput-object v0, v4, Ln5/g;->j:[Ll5/d;

    .line 136
    .line 137
    invoke-virtual/range {p0 .. p0}, Ln5/c;->S()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    const/4 v0, 0x1

    .line 144
    iput-boolean v0, v4, Ln5/g;->m:Z

    .line 145
    .line 146
    :cond_5
    :try_start_0
    iget-object v2, v1, Ln5/c;->n:Ljava/lang/Object;

    .line 147
    .line 148
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :try_start_1
    iget-object v0, v1, Ln5/c;->o:Ln5/m;

    .line 150
    .line 151
    if-eqz v0, :cond_6

    .line 152
    .line 153
    new-instance v3, Ln5/f1;

    .line 154
    .line 155
    iget-object v5, v1, Ln5/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    invoke-direct {v3, v1, v5}, Ln5/f1;-><init>(Ln5/c;I)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v0, v3, v4}, Ln5/m;->N0(Ln5/l;Ln5/g;)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_6
    const-string v0, "GmsClient"

    .line 169
    .line 170
    const-string v3, "mServiceBroker is null, client disconnected"

    .line 171
    .line 172
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    :goto_3
    monitor-exit v2

    .line 176
    return-void

    .line 177
    :catchall_0
    move-exception v0

    .line 178
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    goto :goto_4

    .line 182
    :catch_1
    move-exception v0

    .line 183
    :goto_4
    const-string v2, "GmsClient"

    .line 184
    .line 185
    const-string v3, "IGmsServiceBroker.getService failed"

    .line 186
    .line 187
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .line 189
    .line 190
    iget-object v0, v1, Ln5/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    const/16 v2, 0x8

    .line 197
    .line 198
    const/4 v3, 0x0

    .line 199
    invoke-virtual {v1, v2, v3, v3, v0}, Ln5/c;->N(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :catch_2
    move-exception v0

    .line 204
    throw v0

    .line 205
    :catch_3
    move-exception v0

    .line 206
    const-string v2, "GmsClient"

    .line 207
    .line 208
    const-string v3, "IGmsServiceBroker.getService failed"

    .line 209
    .line 210
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .line 212
    .line 213
    const/4 v0, 0x3

    .line 214
    invoke-virtual {v1, v0}, Ln5/c;->Q(I)V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method public final l()[Ll5/d;
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/c;->B:Ln5/j1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Ln5/j1;->b:[Ll5/d;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public q()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln5/c;->k:Ll5/g;

    .line 2
    .line 3
    iget-object v1, p0, Ln5/c;->h:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Ln5/c;->j()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v0, v1, v2}, Ll5/g;->h(Landroid/content/Context;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0, v1, v2}, Ln5/c;->i0(ILandroid/os/IInterface;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ln5/c$d;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Ln5/c$d;-><init>(Ln5/c;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1, v0, v2}, Ln5/c;->R(Ln5/c$c;ILandroid/app/PendingIntent;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v0, Ln5/c$d;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Ln5/c$d;-><init>(Ln5/c;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ln5/c;->d(Ln5/c$c;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method protected final r()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln5/c;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method protected abstract s(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method protected t()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public u()Landroid/accounts/Account;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public v()[Ll5/d;
    .locals 1

    .line 1
    sget-object v0, Ln5/c;->E:[Ll5/d;

    return-object v0
.end method

.method protected w()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public x()Landroid/os/Bundle;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final y()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/c;->h:Landroid/content/Context;

    return-object v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Ln5/c;->w:I

    return v0
.end method
