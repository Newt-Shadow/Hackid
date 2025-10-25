.class public final Lb3/v1;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lb3/v1;->a(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lb3/v1;->a:I

    .line 9
    .line 10
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "Undefined timeout."

    return-object p0

    :cond_0
    const-string p0, "Detaching surface timed out."

    return-object p0

    :cond_1
    const-string p0, "Setting foreground mode timed out."

    return-object p0

    :cond_2
    const-string p0, "Player release timed out."

    return-object p0
.end method
