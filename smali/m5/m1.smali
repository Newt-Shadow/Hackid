.class public final Lm5/m1;
.super Lm5/i1;
.source "SourceFile"


# instance fields
.field public final c:Lm5/j$a;


# direct methods
.method public constructor <init>(Lm5/j$a;Lm6/l;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0, p2}, Lm5/i1;-><init>(ILm6/l;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lm5/m1;->c:Lm5/j$a;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Lm5/z;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Lm5/i0;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lm5/i0;->x()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lm5/m1;->c:Lm5/j$a;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lm5/v0;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lm5/v0;->a:Lm5/o;

    .line 16
    .line 17
    invoke-virtual {p1}, Lm5/o;->f()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public final g(Lm5/i0;)[Ll5/d;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lm5/i0;->x()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lm5/m1;->c:Lm5/j$a;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lm5/v0;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    iget-object p1, p1, Lm5/v0;->a:Lm5/o;

    .line 18
    .line 19
    invoke-virtual {p1}, Lm5/o;->c()[Ll5/d;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final h(Lm5/i0;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lm5/i0;->x()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lm5/m1;->c:Lm5/j$a;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lm5/v0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lm5/i0;->v()Lcom/google/android/gms/common/api/a$f;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v1, p0, Lm5/i1;->b:Lm6/l;

    .line 20
    .line 21
    iget-object v2, v0, Lm5/v0;->b:Lm5/w;

    .line 22
    .line 23
    invoke-virtual {v2, p1, v1}, Lm5/w;->b(Lcom/google/android/gms/common/api/a$b;Lm6/l;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, v0, Lm5/v0;->a:Lm5/o;

    .line 27
    .line 28
    invoke-virtual {p1}, Lm5/o;->a()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object p1, p0, Lm5/i1;->b:Lm6/l;

    .line 33
    .line 34
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lm6/l;->e(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method
