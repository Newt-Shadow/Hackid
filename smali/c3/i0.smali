.class public final synthetic Lc3/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Lc3/b$a;

.field public final synthetic b:Ld4/n;

.field public final synthetic c:Ld4/q;

.field public final synthetic d:Ljava/io/IOException;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lc3/b$a;Ld4/n;Ld4/q;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/i0;->a:Lc3/b$a;

    iput-object p2, p0, Lc3/i0;->b:Ld4/n;

    iput-object p3, p0, Lc3/i0;->c:Ld4/q;

    iput-object p4, p0, Lc3/i0;->d:Ljava/io/IOException;

    iput-boolean p5, p0, Lc3/i0;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc3/i0;->a:Lc3/b$a;

    iget-object v1, p0, Lc3/i0;->b:Ld4/n;

    iget-object v2, p0, Lc3/i0;->c:Ld4/q;

    iget-object v3, p0, Lc3/i0;->d:Ljava/io/IOException;

    iget-boolean v4, p0, Lc3/i0;->e:Z

    move-object v5, p1

    check-cast v5, Lc3/b;

    invoke-static/range {v0 .. v5}, Lc3/n1;->q0(Lc3/b$a;Ld4/n;Ld4/q;Ljava/io/IOException;ZLc3/b;)V

    return-void
.end method
