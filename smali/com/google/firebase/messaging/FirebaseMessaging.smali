.class public Lcom/google/firebase/messaging/FirebaseMessaging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/FirebaseMessaging$a;
    }
.end annotation


# static fields
.field private static final l:J

.field private static m:Lcom/google/firebase/messaging/c1;

.field static n:Lk8/b;

.field static o:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final a:Lh7/f;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/firebase/messaging/g0;

.field private final d:Lcom/google/firebase/messaging/x0;

.field private final e:Lcom/google/firebase/messaging/FirebaseMessaging$a;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Lm6/Task;

.field private final i:Lcom/google/firebase/messaging/l0;

.field private j:Z

.field private final k:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:J

    .line 10
    .line 11
    new-instance v0, Lcom/google/firebase/messaging/w;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/firebase/messaging/w;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->n:Lk8/b;

    .line 17
    .line 18
    return-void
.end method

.method constructor <init>(Lh7/f;Lj8/a;Lk8/b;Lh8/d;Lcom/google/firebase/messaging/l0;Lcom/google/firebase/messaging/g0;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Z

    .line 11
    sput-object p3, Lcom/google/firebase/messaging/FirebaseMessaging;->n:Lk8/b;

    .line 12
    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lh7/f;

    .line 13
    new-instance p3, Lcom/google/firebase/messaging/FirebaseMessaging$a;

    invoke-direct {p3, p0, p4}, Lcom/google/firebase/messaging/FirebaseMessaging$a;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lh8/d;)V

    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 14
    invoke-virtual {p1}, Lh7/f;->m()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 15
    new-instance p4, Lcom/google/firebase/messaging/q;

    invoke-direct {p4}, Lcom/google/firebase/messaging/q;-><init>()V

    iput-object p4, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 16
    iput-object p5, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lcom/google/firebase/messaging/l0;

    .line 17
    iput-object p6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/firebase/messaging/g0;

    .line 18
    new-instance v0, Lcom/google/firebase/messaging/x0;

    invoke-direct {v0, p7}, Lcom/google/firebase/messaging/x0;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/x0;

    .line 19
    iput-object p8, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Ljava/util/concurrent/Executor;

    .line 20
    iput-object p9, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/Executor;

    .line 21
    invoke-virtual {p1}, Lh7/f;->m()Landroid/content/Context;

    move-result-object p1

    .line 22
    instance-of p7, p1, Landroid/app/Application;

    if-eqz p7, :cond_0

    .line 23
    check-cast p1, Landroid/app/Application;

    .line 24
    invoke-virtual {p1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 25
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Context "

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was not an application, can\'t register for lifecycle callbacks. Some notification events may be dropped as a result."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "FirebaseMessaging"

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p2, :cond_1

    .line 26
    new-instance p1, Lcom/google/firebase/messaging/x;

    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/x;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p2, p1}, Lj8/a;->a(Lj8/a$a;)V

    .line 27
    :cond_1
    new-instance p1, Lcom/google/firebase/messaging/y;

    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/y;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p8, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    invoke-static {}, Lcom/google/firebase/messaging/o;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 29
    invoke-static {p0, p5, p6, p3, p1}, Lcom/google/firebase/messaging/h1;->f(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/l0;Lcom/google/firebase/messaging/g0;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Lm6/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Lm6/Task;

    .line 30
    new-instance p2, Lcom/google/firebase/messaging/z;

    invoke-direct {p2, p0}, Lcom/google/firebase/messaging/z;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-virtual {p1, p8, p2}, Lm6/Task;->f(Ljava/util/concurrent/Executor;Lm6/h;)Lm6/Task;

    .line 31
    new-instance p1, Lcom/google/firebase/messaging/a0;

    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/a0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p8, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Lh7/f;Lj8/a;Lk8/b;Lk8/b;Ll8/e;Lk8/b;Lh8/d;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/google/firebase/messaging/l0;

    .line 2
    invoke-virtual {p1}, Lh7/f;->m()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/google/firebase/messaging/l0;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lh7/f;Lj8/a;Lk8/b;Lk8/b;Ll8/e;Lk8/b;Lh8/d;Lcom/google/firebase/messaging/l0;)V

    return-void
.end method

.method constructor <init>(Lh7/f;Lj8/a;Lk8/b;Lk8/b;Ll8/e;Lk8/b;Lh8/d;Lcom/google/firebase/messaging/l0;)V
    .locals 10

    .line 4
    new-instance v6, Lcom/google/firebase/messaging/g0;

    move-object v0, v6

    move-object v1, p1

    move-object/from16 v2, p8

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/messaging/g0;-><init>(Lh7/f;Lcom/google/firebase/messaging/l0;Lk8/b;Lk8/b;Ll8/e;)V

    .line 5
    invoke-static {}, Lcom/google/firebase/messaging/o;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    .line 6
    invoke-static {}, Lcom/google/firebase/messaging/o;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    .line 7
    invoke-static {}, Lcom/google/firebase/messaging/o;->b()Ljava/util/concurrent/Executor;

    move-result-object v9

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    .line 8
    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lh7/f;Lj8/a;Lk8/b;Lh8/d;Lcom/google/firebase/messaging/l0;Lcom/google/firebase/messaging/g0;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic C(Ljava/lang/String;Lcom/google/firebase/messaging/c1$a;Ljava/lang/String;)Lm6/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->s(Landroid/content/Context;)Lcom/google/firebase/messaging/c1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->t()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lcom/google/firebase/messaging/l0;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/google/firebase/messaging/l0;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, p1, p3, v2}, Lcom/google/firebase/messaging/c1;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget-object p1, p2, Lcom/google/firebase/messaging/c1$a;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/firebase/messaging/FirebaseMessaging;->z(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {p3}, Lm6/n;->e(Ljava/lang/Object;)Lm6/Task;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method private synthetic D(Ljava/lang/String;Lcom/google/firebase/messaging/c1$a;)Lm6/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/firebase/messaging/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/g0;->g()Lm6/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v2, Lcom/google/firebase/messaging/t;

    .line 10
    .line 11
    invoke-direct {v2, p0, p1, p2}, Lcom/google/firebase/messaging/t;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/c1$a;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lm6/Task;->q(Ljava/util/concurrent/Executor;Lm6/k;)Lm6/Task;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private synthetic E(Lm6/l;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/firebase/messaging/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/g0;->c()Lm6/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lm6/n;->a(Lm6/Task;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->s(Landroid/content/Context;)Lcom/google/firebase/messaging/c1;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->t()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lh7/f;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/google/firebase/messaging/l0;->c(Lh7/f;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/messaging/c1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {p1, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method private synthetic F(Lm6/l;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->n()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {p1, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method private synthetic G(Lk5/a;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lk5/a;->g()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/google/firebase/messaging/k0;->y(Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->x()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private synthetic H()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->A()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->T()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic I(Lcom/google/firebase/messaging/h1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->A()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/messaging/h1;->q()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private synthetic J()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic K()Ln2/j;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic L(Ljava/lang/String;Lcom/google/firebase/messaging/h1;)Lm6/Task;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/h1;->r(Ljava/lang/String;)Lm6/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic M(Ljava/lang/String;Lcom/google/firebase/messaging/h1;)Lm6/Task;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/h1;->u(Ljava/lang/String;)Lm6/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private R()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/messaging/r0;->c(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/firebase/messaging/r0;->d(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lh7/f;

    .line 17
    .line 18
    const-class v2, Li7/a;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lh7/f;->k(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    invoke-static {}, Lcom/google/firebase/messaging/k0;->a()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->n:Lk8/b;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_2
    return v1
.end method

.method private declared-synchronized S()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->V(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :cond_0
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0

    .line 15
    throw v0
.end method

.method private T()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->v()Lcom/google/firebase/messaging/c1$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->W(Lcom/google/firebase/messaging/c1$a;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->S()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/google/firebase/messaging/h1;)Lm6/Task;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->L(Ljava/lang/String;Lcom/google/firebase/messaging/h1;)Lm6/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/messaging/FirebaseMessaging;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->E(Lm6/l;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->H()V

    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/messaging/FirebaseMessaging;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->F(Lm6/l;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Lcom/google/firebase/messaging/h1;)Lm6/Task;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->M(Ljava/lang/String;Lcom/google/firebase/messaging/h1;)Lm6/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/h1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->I(Lcom/google/firebase/messaging/h1;)V

    return-void
.end method

.method public static synthetic g(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/c1$a;)Lm6/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->D(Ljava/lang/String;Lcom/google/firebase/messaging/c1$a;)Lm6/Task;

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized getInstance(Lh7/f;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lh7/f;->k(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 11
    .line 12
    const-string v1, "Firebase Messaging component is not present"

    .line 13
    .line 14
    invoke-static {p0, v1}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method

.method public static synthetic h(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/c1$a;Ljava/lang/String;)Lm6/Task;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/messaging/FirebaseMessaging;->C(Ljava/lang/String;Lcom/google/firebase/messaging/c1$a;Ljava/lang/String;)Lm6/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->J()V

    return-void
.end method

.method public static synthetic j(Lcom/google/firebase/messaging/FirebaseMessaging;Lk5/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->G(Lk5/a;)V

    return-void
.end method

.method public static synthetic k()Ln2/j;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->K()Ln2/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/google/firebase/messaging/FirebaseMessaging;)Lh7/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lh7/f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->T()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized r()Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lh7/f;->o()Lh7/f;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance(Lh7/f;)Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0

    .line 16
    throw v1
.end method

.method private static declared-synchronized s(Landroid/content/Context;)Lcom/google/firebase/messaging/c1;
    .locals 2

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Lcom/google/firebase/messaging/c1;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/google/firebase/messaging/c1;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/c1;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Lcom/google/firebase/messaging/c1;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Lcom/google/firebase/messaging/c1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method

.method private t()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lh7/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lh7/f;->q()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "[DEFAULT]"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lh7/f;

    .line 19
    .line 20
    invoke-virtual {v0}, Lh7/f;->s()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    return-object v0
.end method

.method public static w()Ln2/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->n:Lk8/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lk8/b;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ln2/j;

    .line 8
    .line 9
    return-object v0
.end method

.method private x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/firebase/messaging/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/g0;->f()Lm6/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v2, Lcom/google/firebase/messaging/c0;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/google/firebase/messaging/c0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lm6/Task;->f(Ljava/util/concurrent/Executor;Lm6/h;)Lm6/Task;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/messaging/r0;->c(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/firebase/messaging/g0;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->R()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v0, v1, v2}, Lcom/google/firebase/messaging/t0;->g(Landroid/content/Context;Lcom/google/firebase/messaging/g0;Z)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->R()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->x()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private z(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lh7/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lh7/f;->q()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "[DEFAULT]"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    const-string v1, "FirebaseMessaging"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "Invoking onNewToken for app: "

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lh7/f;

    .line 35
    .line 36
    invoke-virtual {v2}, Lh7/f;->q()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 51
    .line 52
    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    .line 53
    .line 54
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v1, "token"

    .line 58
    .line 59
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    new-instance p1, Lcom/google/firebase/messaging/n;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 65
    .line 66
    invoke-direct {p1, v1}, Lcom/google/firebase/messaging/n;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/n;->k(Landroid/content/Intent;)Lm6/Task;

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lcom/google/firebase/messaging/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/l0;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public N(Lcom/google/firebase/messaging/u0;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/messaging/u0;->t()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v1, "com.google.android.gcm.intent.SEND"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/content/Intent;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "com.google.example.invalidpackage"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/high16 v4, 0x4000000

    .line 32
    .line 33
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "app"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const-string v1, "com.google.android.gms"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/u0;->D(Landroid/content/Intent;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 51
    .line 52
    const-string v1, "com.google.android.gtalkservice.permission.GTALK_SERVICE"

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string v0, "Missing \'to\'"

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public O(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->f(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public P(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/firebase/messaging/k0;->B(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lcom/google/firebase/messaging/g0;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->R()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {p1, v0, v1}, Lcom/google/firebase/messaging/t0;->g(Landroid/content/Context;Lcom/google/firebase/messaging/g0;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method declared-synchronized Q(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public U(Ljava/lang/String;)Lm6/Task;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Lm6/Task;

    .line 2
    .line 3
    new-instance v1, Lcom/google/firebase/messaging/u;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/firebase/messaging/u;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lm6/Task;->r(Lm6/k;)Lm6/Task;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method declared-synchronized V(J)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x2

    .line 3
    .line 4
    mul-long/2addr v0, p1

    .line 5
    const-wide/16 v2, 0x1e

    .line 6
    .line 7
    :try_start_0
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sget-wide v2, Lcom/google/firebase/messaging/FirebaseMessaging;->l:J

    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    new-instance v2, Lcom/google/firebase/messaging/d1;

    .line 18
    .line 19
    invoke-direct {v2, p0, v0, v1}, Lcom/google/firebase/messaging/d1;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->p(Ljava/lang/Runnable;J)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method

.method W(Lcom/google/firebase/messaging/c1$a;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lcom/google/firebase/messaging/l0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/messaging/l0;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/c1$a;->b(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    :goto_1
    return p1
.end method

.method public X(Ljava/lang/String;)Lm6/Task;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Lm6/Task;

    .line 2
    .line 3
    new-instance v1, Lcom/google/firebase/messaging/r;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/firebase/messaging/r;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lm6/Task;->r(Lm6/k;)Lm6/Task;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method n()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->v()Lcom/google/firebase/messaging/c1$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->W(Lcom/google/firebase/messaging/c1$a;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/firebase/messaging/c1$a;->a:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lh7/f;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/google/firebase/messaging/l0;->c(Lh7/f;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/x0;

    .line 21
    .line 22
    new-instance v3, Lcom/google/firebase/messaging/s;

    .line 23
    .line 24
    invoke-direct {v3, p0, v1, v0}, Lcom/google/firebase/messaging/s;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/c1$a;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1, v3}, Lcom/google/firebase/messaging/x0;->b(Ljava/lang/String;Lcom/google/firebase/messaging/x0$a;)Lm6/Task;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :try_start_0
    invoke-static {v0}, Lm6/n;->a(Lm6/Task;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    goto :goto_0

    .line 40
    :catch_1
    move-exception v0

    .line 41
    :goto_0
    new-instance v1, Ljava/io/IOException;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v1
.end method

.method public o()Lm6/Task;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->v()Lcom/google/firebase/messaging/c1$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Lm6/n;->e(Ljava/lang/Object;)Lm6/Task;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lm6/l;

    .line 14
    .line 15
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/google/firebase/messaging/o;->e()Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/google/firebase/messaging/v;

    .line 23
    .line 24
    invoke-direct {v2, p0, v0}, Lcom/google/firebase/messaging/v;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lm6/l;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method p(Ljava/lang/Runnable;J)V
    .locals 4

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->o:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 9
    .line 10
    new-instance v2, Ls5/b;

    .line 11
    .line 12
    const-string v3, "TAG"

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ls5/b;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->o:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    .line 23
    :cond_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->o:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    .line 25
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    invoke-interface {v1, p1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method

.method q()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Lm6/Task;
    .locals 3

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    new-instance v2, Lcom/google/firebase/messaging/b0;

    .line 9
    .line 10
    invoke-direct {v2, p0, v0}, Lcom/google/firebase/messaging/b0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method v()Lcom/google/firebase/messaging/c1$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->s(Landroid/content/Context;)Lcom/google/firebase/messaging/c1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->t()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lh7/f;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/google/firebase/messaging/l0;->c(Lh7/f;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/messaging/c1;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/c1$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
