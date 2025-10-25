.class public final Laf/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Laf/d;

.field private b:Laf/v0;

.field public c:J

.field public d:[B

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Laf/d$a;->c:J

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Laf/d$a;->e:I

    .line 10
    .line 11
    iput v0, p0, Laf/d$a;->f:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Laf/v0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laf/d$a;->b:Laf/v0;

    .line 2
    .line 3
    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Laf/d$a;->a:Laf/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Laf/d$a;->a:Laf/d;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Laf/d$a;->a(Laf/v0;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v1, -0x1

    .line 17
    .line 18
    iput-wide v1, p0, Laf/d$a;->c:J

    .line 19
    .line 20
    iput-object v0, p0, Laf/d$a;->d:[B

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    iput v0, p0, Laf/d$a;->e:I

    .line 24
    .line 25
    iput v0, p0, Laf/d$a;->f:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v1, "not attached to a buffer"

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method
