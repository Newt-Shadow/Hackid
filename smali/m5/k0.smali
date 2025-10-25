.class final Lm5/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lm5/b;

.field private final b:Ll5/d;


# direct methods
.method synthetic constructor <init>(Lm5/b;Ll5/d;Lm5/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/k0;->a:Lm5/b;

    iput-object p2, p0, Lm5/k0;->b:Ll5/d;

    return-void
.end method

.method static bridge synthetic a(Lm5/k0;)Ll5/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lm5/k0;->b:Ll5/d;

    return-object p0
.end method

.method static bridge synthetic b(Lm5/k0;)Lm5/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lm5/k0;->a:Lm5/b;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    instance-of v1, p1, Lm5/k0;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast p1, Lm5/k0;

    .line 9
    .line 10
    iget-object v1, p0, Lm5/k0;->a:Lm5/b;

    .line 11
    .line 12
    iget-object v2, p1, Lm5/k0;->a:Lm5/b;

    .line 13
    .line 14
    invoke-static {v1, v2}, Ln5/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lm5/k0;->b:Ll5/d;

    .line 21
    .line 22
    iget-object p1, p1, Lm5/k0;->b:Ll5/d;

    .line 23
    .line 24
    invoke-static {v1, p1}, Ln5/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/k0;->a:Lm5/b;

    .line 2
    .line 3
    iget-object v1, p0, Lm5/k0;->b:Ll5/d;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ln5/o;->b([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ln5/o;->c(Ljava/lang/Object;)Ln5/o$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "key"

    .line 6
    .line 7
    iget-object v2, p0, Lm5/k0;->a:Lm5/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Ln5/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ln5/o$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "feature"

    .line 14
    .line 15
    iget-object v2, p0, Lm5/k0;->b:Ll5/d;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ln5/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ln5/o$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ln5/o$a;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
