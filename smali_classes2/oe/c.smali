.class public final synthetic Loe/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lne/q$c;


# instance fields
.field public final synthetic a:Lne/q;


# direct methods
.method public synthetic constructor <init>(Lne/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loe/c;->a:Lne/q;

    return-void
.end method


# virtual methods
.method public final a(Lne/e;)Lne/q;
    .locals 1

    .line 1
    iget-object v0, p0, Loe/c;->a:Lne/q;

    invoke-static {v0, p1}, Loe/d;->b(Lne/q;Lne/e;)Lne/q;

    move-result-object p1

    return-object p1
.end method
