.class public final Lio/sentry/android/replay/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/o$a;
    }
.end annotation


# static fields
.field public static final e:Lio/sentry/android/replay/o$a;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/android/replay/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/replay/o$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/replay/o;->e:Lio/sentry/android/replay/o$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/replay/o;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/android/replay/o;->b:Ljava/lang/Object;

    .line 5
    new-instance v0, Lio/sentry/android/replay/o$c;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/o$c;-><init>(Lio/sentry/android/replay/o;)V

    iput-object v0, p0, Lio/sentry/android/replay/o;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    new-instance v0, Lio/sentry/android/replay/o$b;

    invoke-direct {v0, p0}, Lio/sentry/android/replay/o$b;-><init>(Lio/sentry/android/replay/o;)V

    iput-object v0, p0, Lio/sentry/android/replay/o;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/replay/o;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lio/sentry/android/replay/o;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/o;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lio/sentry/android/replay/o;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/o;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lio/sentry/android/replay/o;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/o;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/o;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/android/replay/o;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final e()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/o;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object v0
.end method
