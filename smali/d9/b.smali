.class public abstract Ld9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ld9/h;


# direct methods
.method protected constructor <init>(Ld9/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld9/b;->a:Ld9/h;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract a(Ld9/h;)Ld9/b;
.end method

.method public abstract b()Lj9/b;
.end method

.method public abstract c(ILj9/a;)Lj9/a;
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld9/b;->a:Ld9/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld9/h;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e()Ld9/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ld9/b;->a:Ld9/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld9/b;->a:Ld9/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld9/h;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
