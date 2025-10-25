.class public final synthetic Lfa/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa/d0$c;


# instance fields
.field public final synthetic a:Lfa/d0;

.field public final synthetic b:Lfa/d0$c;


# direct methods
.method public synthetic constructor <init>(Lfa/d0;Lfa/d0$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa/c0;->a:Lfa/d0;

    iput-object p2, p0, Lfa/c0;->b:Lfa/d0$c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/c0;->a:Lfa/d0;

    iget-object v1, p0, Lfa/c0;->b:Lfa/d0$c;

    invoke-static {v0, v1, p1, p2}, Lfa/d0;->a(Lfa/d0;Lfa/d0$c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
