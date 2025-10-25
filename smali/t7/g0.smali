.class public abstract Lt7/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt7/g0$a;,
        Lt7/g0$c;,
        Lt7/g0$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lt7/g0$a;Lt7/g0$c;Lt7/g0$b;)Lt7/g0;
    .locals 1

    .line 1
    new-instance v0, Lt7/b0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lt7/b0;-><init>(Lt7/g0$a;Lt7/g0$c;Lt7/g0$b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract a()Lt7/g0$a;
.end method

.method public abstract c()Lt7/g0$b;
.end method

.method public abstract d()Lt7/g0$c;
.end method
