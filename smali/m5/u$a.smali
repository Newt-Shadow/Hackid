.class public Lm5/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lm5/q;

.field private b:Z

.field private c:[Ll5/d;

.field private d:I


# direct methods
.method synthetic constructor <init>(Lm5/g1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm5/u$a;->b:Z

    const/4 p1, 0x0

    iput p1, p0, Lm5/u$a;->d:I

    return-void
.end method

.method static bridge synthetic f(Lm5/u$a;)Lm5/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lm5/u$a;->a:Lm5/q;

    return-object p0
.end method


# virtual methods
.method public a()Lm5/u;
    .locals 4

    .line 1
    iget-object v0, p0, Lm5/u$a;->a:Lm5/q;

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
    const-string v1, "execute parameter required"

    .line 9
    .line 10
    invoke-static {v0, v1}, Ln5/q;->b(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lm5/f1;

    .line 14
    .line 15
    iget-object v1, p0, Lm5/u$a;->c:[Ll5/d;

    .line 16
    .line 17
    iget-boolean v2, p0, Lm5/u$a;->b:Z

    .line 18
    .line 19
    iget v3, p0, Lm5/u$a;->d:I

    .line 20
    .line 21
    invoke-direct {v0, p0, v1, v2, v3}, Lm5/f1;-><init>(Lm5/u$a;[Ll5/d;ZI)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public b(Lm5/q;)Lm5/u$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lm5/u$a;->a:Lm5/q;

    return-object p0
.end method

.method public c(Z)Lm5/u$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm5/u$a;->b:Z

    return-object p0
.end method

.method public varargs d([Ll5/d;)Lm5/u$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lm5/u$a;->c:[Ll5/d;

    return-object p0
.end method

.method public e(I)Lm5/u$a;
    .locals 0

    .line 1
    iput p1, p0, Lm5/u$a;->d:I

    return-object p0
.end method
