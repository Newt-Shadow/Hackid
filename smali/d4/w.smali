.class public final synthetic Ld4/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld4/a0$a;

.field public final synthetic b:Ld4/a0;

.field public final synthetic c:Ld4/n;

.field public final synthetic d:Ld4/q;

.field public final synthetic e:Ljava/io/IOException;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Ld4/a0$a;Ld4/a0;Ld4/n;Ld4/q;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4/w;->a:Ld4/a0$a;

    iput-object p2, p0, Ld4/w;->b:Ld4/a0;

    iput-object p3, p0, Ld4/w;->c:Ld4/n;

    iput-object p4, p0, Ld4/w;->d:Ld4/q;

    iput-object p5, p0, Ld4/w;->e:Ljava/io/IOException;

    iput-boolean p6, p0, Ld4/w;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Ld4/w;->a:Ld4/a0$a;

    iget-object v1, p0, Ld4/w;->b:Ld4/a0;

    iget-object v2, p0, Ld4/w;->c:Ld4/n;

    iget-object v3, p0, Ld4/w;->d:Ld4/q;

    iget-object v4, p0, Ld4/w;->e:Ljava/io/IOException;

    iget-boolean v5, p0, Ld4/w;->f:Z

    invoke-static/range {v0 .. v5}, Ld4/a0$a;->b(Ld4/a0$a;Ld4/a0;Ld4/n;Ld4/q;Ljava/io/IOException;Z)V

    return-void
.end method
