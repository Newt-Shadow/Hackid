.class public abstract Lmf/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lpf/a;


# direct methods
.method static a(Lpf/a;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sput-object p0, Lmf/f;->a:Lpf/a;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method
