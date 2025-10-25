.class public final synthetic Lc3/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/q$a;


# instance fields
.field public final synthetic a:Lc3/b$a;


# direct methods
.method public synthetic constructor <init>(Lc3/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/l1;->a:Lc3/b$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/l1;->a:Lc3/b$a;

    check-cast p1, Lc3/b;

    invoke-static {v0, p1}, Lc3/n1;->S0(Lc3/b$a;Lc3/b;)V

    return-void
.end method
