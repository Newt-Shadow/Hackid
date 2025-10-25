.class public Lb3/i3;
.super Ljava/lang/Exception;
.source "SourceFile"

# interfaces
.implements Lb3/r;


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field public static final h:Lb3/r$a;


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lb3/i3;->c:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lb3/i3;->d:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lb3/i3;->e:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lb3/i3;->f:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    invoke-static {v0}, Ly4/q0;->q0(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lb3/i3;->g:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v0, Lb3/h3;

    .line 37
    .line 38
    invoke-direct {v0}, Lb3/h3;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lb3/i3;->h:Lb3/r$a;

    .line 42
    .line 43
    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    sget-object v0, Lb3/i3;->e:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {p1}, Lb3/i3;->c(Landroid/os/Bundle;)Ljava/lang/Throwable;

    move-result-object v3

    sget-object v0, Lb3/i3;->c:Ljava/lang/String;

    const/16 v1, 0x3e8

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v0, Lb3/i3;->d:Ljava/lang/String;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 6
    invoke-virtual {p1, v0, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, p0

    .line 7
    invoke-direct/range {v1 .. v6}, Lb3/i3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iput p3, p0, Lb3/i3;->a:I

    .line 10
    iput-wide p4, p0, Lb3/i3;->b:J

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/os/RemoteException;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/RemoteException;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 1

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Throwable;

    .line 20
    .line 21
    return-object p0
.end method

.method private static c(Landroid/os/Bundle;)Ljava/lang/Throwable;
    .locals 4

    .line 1
    sget-object v0, Lb3/i3;->f:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lb3/i3;->g:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    :try_start_0
    const-class v1, Lb3/i3;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-static {v0, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-class v1, Ljava/lang/Throwable;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-static {v0, p0}, Lb3/i3;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    move-object v2, v0

    .line 44
    :cond_0
    if-nez v2, :cond_1

    .line 45
    .line 46
    :catchall_0
    invoke-static {p0}, Lb3/i3;->a(Ljava/lang/String;)Landroid/os/RemoteException;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_1
    return-object v2
.end method
