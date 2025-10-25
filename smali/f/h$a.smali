.class public final Lf/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lg/f$f;

.field private b:I

.field private c:Z

.field private d:Lg/f$b;

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lg/f$c;->a:Lg/f$c;

    .line 5
    .line 6
    iput-object v0, p0, Lf/h$a;->a:Lg/f$f;

    .line 7
    .line 8
    sget-object v0, Lg/d;->b:Lg/d$a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lg/d$a;->a()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lf/h$a;->b:I

    .line 15
    .line 16
    sget-object v0, Lg/f$b$a;->a:Lg/f$b$a;

    .line 17
    .line 18
    iput-object v0, p0, Lf/h$a;->d:Lg/f$b;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Lf/h;
    .locals 3

    .line 1
    new-instance v0, Lf/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lf/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lf/h$a;->a:Lg/f$f;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lf/h;->k(Lg/f$f;)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lf/h$a;->b:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lf/h;->j(I)V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Lf/h$a;->c:Z

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lf/h;->l(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lf/h$a;->d:Lg/f$b;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lf/h;->i(Lg/f$b;)V

    .line 24
    .line 25
    .line 26
    iget-boolean v1, p0, Lf/h$a;->e:Z

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lf/h;->h(Z)V

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lf/h$a;->f:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lf/h;->g(J)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public final b(Lg/f$f;)Lf/h$a;
    .locals 1

    .line 1
    const-string v0, "mediaType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lf/h$a;->a:Lg/f$f;

    .line 7
    .line 8
    return-object p0
.end method
