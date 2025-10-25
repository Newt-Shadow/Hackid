.class public final synthetic Lc3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Lc3/b$a;

.field public final synthetic b:Lb3/l4;


# direct methods
.method public synthetic constructor <init>(Lc3/b$a;Lb3/l4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/q;->a:Lc3/b$a;

    iput-object p2, p0, Lc3/q;->b:Lb3/l4;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc3/q;->a:Lc3/b$a;

    iget-object v1, p0, Lc3/q;->b:Lb3/l4;

    check-cast p1, Lc3/b;

    invoke-static {v0, v1, p1}, Lc3/n1;->C0(Lc3/b$a;Lb3/l4;Lc3/b;)V

    return-void
.end method
