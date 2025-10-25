.class abstract Lk3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk3/e$a;
    }
.end annotation


# instance fields
.field protected final a:Lg3/b0;


# direct methods
.method protected constructor <init>(Lg3/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk3/e;->a:Lg3/b0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ly4/e0;J)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lk3/e;->b(Ly4/e0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lk3/e;->c(Ly4/e0;J)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method protected abstract b(Ly4/e0;)Z
.end method

.method protected abstract c(Ly4/e0;J)Z
.end method
