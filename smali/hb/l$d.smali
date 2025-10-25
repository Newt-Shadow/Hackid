.class final Lhb/l$d;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhb/l;-><init>(Landroid/content/Context;Lfb/b;Lgb/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final e:Lhb/l$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhb/l$d;

    invoke-direct {v0}, Lhb/l$d;-><init>()V

    sput-object v0, Lhb/l$d;->e:Lhb/l$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 1
    new-instance v0, Llb/d0;

    .line 2
    .line 3
    const-string v1, "PostHogReplayThread"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Llb/d0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lhb/l$d;->b()Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
