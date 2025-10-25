.class public final Lx4/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx4/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx4/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lx4/b0;

.field private b:Lx4/m0;

.field private c:Ln6/n;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx4/b0;

    .line 5
    .line 6
    invoke-direct {v0}, Lx4/b0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lx4/s$b;->a:Lx4/b0;

    .line 10
    .line 11
    const/16 v0, 0x1f40

    .line 12
    .line 13
    iput v0, p0, Lx4/s$b;->e:I

    .line 14
    .line 15
    iput v0, p0, Lx4/s$b;->f:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lx4/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lx4/s$b;->b()Lx4/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public b()Lx4/s;
    .locals 10

    .line 1
    new-instance v9, Lx4/s;

    .line 2
    .line 3
    iget-object v1, p0, Lx4/s$b;->d:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lx4/s$b;->e:I

    .line 6
    .line 7
    iget v3, p0, Lx4/s$b;->f:I

    .line 8
    .line 9
    iget-boolean v4, p0, Lx4/s$b;->g:Z

    .line 10
    .line 11
    iget-object v5, p0, Lx4/s$b;->a:Lx4/b0;

    .line 12
    .line 13
    iget-object v6, p0, Lx4/s$b;->c:Ln6/n;

    .line 14
    .line 15
    iget-boolean v7, p0, Lx4/s$b;->h:Z

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    move-object v0, v9

    .line 19
    invoke-direct/range {v0 .. v8}, Lx4/s;-><init>(Ljava/lang/String;IIZLx4/b0;Ln6/n;ZLx4/s$a;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lx4/s$b;->b:Lx4/m0;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v9, v0}, Lx4/f;->d(Lx4/m0;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object v9
.end method

.method public c(Z)Lx4/s$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lx4/s$b;->g:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Ljava/util/Map;)Lx4/s$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lx4/s$b;->a:Lx4/b0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lx4/b0;->a(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lx4/s$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lx4/s$b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
