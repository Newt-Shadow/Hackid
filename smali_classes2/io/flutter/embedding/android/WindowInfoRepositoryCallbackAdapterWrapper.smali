.class public Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final adapter:Ls1/a;


# direct methods
.method public constructor <init>(Ls1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;->adapter:Ls1/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Lc0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "Lc0/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;->adapter:Ls1/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ls1/a;->b(Landroid/app/Activity;Ljava/util/concurrent/Executor;Lc0/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeWindowLayoutInfoListener(Lc0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc0/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/WindowInfoRepositoryCallbackAdapterWrapper;->adapter:Ls1/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ls1/a;->c(Lc0/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
