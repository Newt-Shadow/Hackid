.class public final synthetic Lc3/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Lc3/b$a;

.field public final synthetic b:Lb3/x1;

.field public final synthetic c:Le3/i;


# direct methods
.method public synthetic constructor <init>(Lc3/b$a;Lb3/x1;Le3/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/n0;->a:Lc3/b$a;

    iput-object p2, p0, Lc3/n0;->b:Lb3/x1;

    iput-object p3, p0, Lc3/n0;->c:Le3/i;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc3/n0;->a:Lc3/b$a;

    iget-object v1, p0, Lc3/n0;->b:Lb3/x1;

    iget-object v2, p0, Lc3/n0;->c:Le3/i;

    check-cast p1, Lc3/b;

    invoke-static {v0, v1, v2, p1}, Lc3/n1;->N(Lc3/b$a;Lb3/x1;Le3/i;Lc3/b;)V

    return-void
.end method
