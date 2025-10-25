.class public final synthetic Lc3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Lc3/b$a;

.field public final synthetic b:Lb3/y;


# direct methods
.method public synthetic constructor <init>(Lc3/b$a;Lb3/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/n;->a:Lc3/b$a;

    iput-object p2, p0, Lc3/n;->b:Lb3/y;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc3/n;->a:Lc3/b$a;

    iget-object v1, p0, Lc3/n;->b:Lb3/y;

    check-cast p1, Lc3/b;

    invoke-static {v0, v1, p1}, Lc3/n1;->U(Lc3/b$a;Lb3/y;Lc3/b;)V

    return-void
.end method
