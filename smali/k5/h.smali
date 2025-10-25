.class public final synthetic Lk5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/f;


# instance fields
.field public final synthetic a:Lk5/c;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public synthetic constructor <init>(Lk5/c;Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/h;->a:Lk5/c;

    iput-object p2, p0, Lk5/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lk5/h;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final onComplete(Lm6/Task;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk5/h;->a:Lk5/c;

    iget-object v1, p0, Lk5/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lk5/h;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {v0, v1, v2, p1}, Lk5/c;->h(Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;Lm6/Task;)V

    return-void
.end method
