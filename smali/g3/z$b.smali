.class public Lg3/z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg3/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:Lg3/z$a;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lg3/z$b;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lg3/z$b;->a:J

    .line 4
    new-instance p1, Lg3/z$a;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    .line 5
    sget-object p2, Lg3/a0;->c:Lg3/a0;

    goto :goto_0

    :cond_0
    new-instance p2, Lg3/a0;

    invoke-direct {p2, v0, v1, p3, p4}, Lg3/a0;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2}, Lg3/z$a;-><init>(Lg3/a0;)V

    iput-object p1, p0, Lg3/z$b;->b:Lg3/z$a;

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public h(J)Lg3/z$a;
    .locals 0

    .line 1
    iget-object p1, p0, Lg3/z$b;->b:Lg3/z$a;

    .line 2
    .line 3
    return-object p1
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lg3/z$b;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
