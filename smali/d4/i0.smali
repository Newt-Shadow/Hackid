.class public final synthetic Ld4/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld4/b0$a;


# instance fields
.field public final synthetic a:Lg3/p;


# direct methods
.method public synthetic constructor <init>(Lg3/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4/i0;->a:Lg3/p;

    return-void
.end method


# virtual methods
.method public final a(Lc3/t3;)Ld4/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/i0;->a:Lg3/p;

    invoke-static {v0, p1}, Ld4/h0$b;->a(Lg3/p;Lc3/t3;)Ld4/b0;

    move-result-object p1

    return-object p1
.end method
