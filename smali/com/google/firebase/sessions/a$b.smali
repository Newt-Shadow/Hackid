.class final Lcom/google/firebase/sessions/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lad/i;

.field private c:Lad/i;

.field private d:Lh7/f;

.field private e:Ll8/e;

.field private f:Lk8/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/sessions/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/sessions/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ll8/e;)Lcom/google/firebase/sessions/b$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/a$b;->k(Ll8/e;)Lcom/google/firebase/sessions/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Lk8/b;)Lcom/google/firebase/sessions/b$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/a$b;->l(Lk8/b;)Lcom/google/firebase/sessions/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public build()Lcom/google/firebase/sessions/b;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/a$b;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lw8/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/sessions/a$b;->b:Lad/i;

    .line 9
    .line 10
    const-class v1, Lad/i;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lw8/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/firebase/sessions/a$b;->c:Lad/i;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lw8/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/firebase/sessions/a$b;->d:Lh7/f;

    .line 21
    .line 22
    const-class v1, Lh7/f;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lw8/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/firebase/sessions/a$b;->e:Ll8/e;

    .line 28
    .line 29
    const-class v1, Ll8/e;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lw8/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/firebase/sessions/a$b;->f:Lk8/b;

    .line 35
    .line 36
    const-class v1, Lk8/b;

    .line 37
    .line 38
    invoke-static {v0, v1}, Lw8/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/google/firebase/sessions/a$c;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/google/firebase/sessions/a$b;->a:Landroid/content/Context;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/google/firebase/sessions/a$b;->b:Lad/i;

    .line 46
    .line 47
    iget-object v5, p0, Lcom/google/firebase/sessions/a$b;->c:Lad/i;

    .line 48
    .line 49
    iget-object v6, p0, Lcom/google/firebase/sessions/a$b;->d:Lh7/f;

    .line 50
    .line 51
    iget-object v7, p0, Lcom/google/firebase/sessions/a$b;->e:Ll8/e;

    .line 52
    .line 53
    iget-object v8, p0, Lcom/google/firebase/sessions/a$b;->f:Lk8/b;

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    move-object v2, v0

    .line 57
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/sessions/a$c;-><init>(Landroid/content/Context;Lad/i;Lad/i;Lh7/f;Ll8/e;Lk8/b;Lcom/google/firebase/sessions/a$a;)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method

.method public bridge synthetic c(Lad/i;)Lcom/google/firebase/sessions/b$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/a$b;->h(Lad/i;)Lcom/google/firebase/sessions/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic d(Lad/i;)Lcom/google/firebase/sessions/b$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/a$b;->i(Lad/i;)Lcom/google/firebase/sessions/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic e(Landroid/content/Context;)Lcom/google/firebase/sessions/b$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/a$b;->g(Landroid/content/Context;)Lcom/google/firebase/sessions/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic f(Lh7/f;)Lcom/google/firebase/sessions/b$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/a$b;->j(Lh7/f;)Lcom/google/firebase/sessions/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public g(Landroid/content/Context;)Lcom/google/firebase/sessions/a$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lw8/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/content/Context;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/sessions/a$b;->a:Landroid/content/Context;

    .line 8
    .line 9
    return-object p0
.end method

.method public h(Lad/i;)Lcom/google/firebase/sessions/a$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lw8/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lad/i;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/sessions/a$b;->b:Lad/i;

    .line 8
    .line 9
    return-object p0
.end method

.method public i(Lad/i;)Lcom/google/firebase/sessions/a$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lw8/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lad/i;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/sessions/a$b;->c:Lad/i;

    .line 8
    .line 9
    return-object p0
.end method

.method public j(Lh7/f;)Lcom/google/firebase/sessions/a$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lw8/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lh7/f;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/sessions/a$b;->d:Lh7/f;

    .line 8
    .line 9
    return-object p0
.end method

.method public k(Ll8/e;)Lcom/google/firebase/sessions/a$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lw8/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ll8/e;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/sessions/a$b;->e:Ll8/e;

    .line 8
    .line 9
    return-object p0
.end method

.method public l(Lk8/b;)Lcom/google/firebase/sessions/a$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lw8/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lk8/b;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/sessions/a$b;->f:Lk8/b;

    .line 8
    .line 9
    return-object p0
.end method
