.class public Lm6/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lm6/n0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm6/n0;

    invoke-direct {v0}, Lm6/n0;-><init>()V

    iput-object v0, p0, Lm6/l;->a:Lm6/n0;

    return-void
.end method

.method public constructor <init>(Lm6/a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm6/n0;

    invoke-direct {v0}, Lm6/n0;-><init>()V

    iput-object v0, p0, Lm6/l;->a:Lm6/n0;

    new-instance v0, Lm6/k0;

    invoke-direct {v0, p0}, Lm6/k0;-><init>(Lm6/l;)V

    invoke-virtual {p1, v0}, Lm6/a;->a(Lm6/i;)Lm6/a;

    return-void
.end method

.method static bridge synthetic f(Lm6/l;)Lm6/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lm6/l;->a:Lm6/n0;

    return-object p0
.end method


# virtual methods
.method public a()Lm6/Task;
    .locals 1

    .line 1
    iget-object v0, p0, Lm6/l;->a:Lm6/n0;

    return-object v0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm6/l;->a:Lm6/n0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm6/n0;->s(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm6/l;->a:Lm6/n0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm6/n0;->t(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Ljava/lang/Exception;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm6/l;->a:Lm6/n0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm6/n0;->v(Ljava/lang/Exception;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm6/l;->a:Lm6/n0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm6/n0;->w(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
