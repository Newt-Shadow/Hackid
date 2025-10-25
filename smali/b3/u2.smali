.class public final synthetic Lb3/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lb3/d3$a;

.field public final synthetic b:Landroid/util/Pair;

.field public final synthetic c:Ld4/n;

.field public final synthetic d:Ld4/q;

.field public final synthetic e:Ljava/io/IOException;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lb3/d3$a;Landroid/util/Pair;Ld4/n;Ld4/q;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/u2;->a:Lb3/d3$a;

    iput-object p2, p0, Lb3/u2;->b:Landroid/util/Pair;

    iput-object p3, p0, Lb3/u2;->c:Ld4/n;

    iput-object p4, p0, Lb3/u2;->d:Ld4/q;

    iput-object p5, p0, Lb3/u2;->e:Ljava/io/IOException;

    iput-boolean p6, p0, Lb3/u2;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lb3/u2;->a:Lb3/d3$a;

    iget-object v1, p0, Lb3/u2;->b:Landroid/util/Pair;

    iget-object v2, p0, Lb3/u2;->c:Ld4/n;

    iget-object v3, p0, Lb3/u2;->d:Ld4/q;

    iget-object v4, p0, Lb3/u2;->e:Ljava/io/IOException;

    iget-boolean v5, p0, Lb3/u2;->f:Z

    invoke-static/range {v0 .. v5}, Lb3/d3$a;->Q(Lb3/d3$a;Landroid/util/Pair;Ld4/n;Ld4/q;Ljava/io/IOException;Z)V

    return-void
.end method
