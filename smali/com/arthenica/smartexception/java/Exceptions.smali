.class public Lcom/arthenica/smartexception/java/Exceptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static classLoader:Lcom/arthenica/smartexception/ClassLoader;

.field static packageLoader:Lcom/arthenica/smartexception/PackageLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/arthenica/smartexception/java/JavaPackageLoader;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/arthenica/smartexception/java/JavaPackageLoader;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/arthenica/smartexception/java/Exceptions;->packageLoader:Lcom/arthenica/smartexception/PackageLoader;

    .line 7
    .line 8
    new-instance v0, Lcom/arthenica/smartexception/java/JavaClassLoader;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/arthenica/smartexception/java/JavaClassLoader;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/arthenica/smartexception/java/Exceptions;->classLoader:Lcom/arthenica/smartexception/ClassLoader;

    .line 14
    .line 15
    new-instance v0, Lcom/arthenica/smartexception/java/JavaStackTraceElementSerializer;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/arthenica/smartexception/java/JavaStackTraceElementSerializer;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/arthenica/smartexception/AbstractExceptions;->setStackTraceElementSerializer(Lcom/arthenica/smartexception/StackTraceElementSerializer;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearGroupPackages()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/arthenica/smartexception/AbstractExceptions;->clearGroupPackages()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static clearIgnorePackages()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/arthenica/smartexception/AbstractExceptions;->clearIgnorePackages()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static clearRootPackages()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/arthenica/smartexception/AbstractExceptions;->clearRootPackages()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static containsCause(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->containsCause(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static containsCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/arthenica/smartexception/AbstractExceptions;->containsCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getAllMessages(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->getAllMessages(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static getCause(Ljava/lang/Throwable;I)Ljava/lang/Throwable;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->getCause(Ljava/lang/Throwable;I)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static getIgnoreAllCauses()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/arthenica/smartexception/AbstractExceptions;->getIgnoreAllCauses()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static getPrintSuppressedExceptions()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/arthenica/smartexception/AbstractExceptions;->getPrintSuppressedExceptions()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static getStackTraceElementSerializer()Lcom/arthenica/smartexception/StackTraceElementSerializer;
    .locals 1

    .line 1
    invoke-static {}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceElementSerializer()Lcom/arthenica/smartexception/StackTraceElementSerializer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/arthenica/smartexception/ThrowableWrapper;

    invoke-direct {v0, p0}, Lcom/arthenica/smartexception/ThrowableWrapper;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 1

    .line 9
    new-instance v0, Lcom/arthenica/smartexception/ThrowableWrapper;

    invoke-direct {v0, p0}, Lcom/arthenica/smartexception/ThrowableWrapper;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;IZ)Ljava/lang/String;
    .locals 1

    .line 10
    new-instance v0, Lcom/arthenica/smartexception/ThrowableWrapper;

    invoke-direct {v0, p0}, Lcom/arthenica/smartexception/ThrowableWrapper;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, p1, p2}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;IZZ)Ljava/lang/String;
    .locals 1

    .line 11
    new-instance v0, Lcom/arthenica/smartexception/ThrowableWrapper;

    invoke-direct {v0, p0}, Lcom/arthenica/smartexception/ThrowableWrapper;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, p1, p2, p3}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;IZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;IZZZ)Ljava/lang/String;
    .locals 1

    .line 12
    new-instance v0, Lcom/arthenica/smartexception/ThrowableWrapper;

    invoke-direct {v0, p0}, Lcom/arthenica/smartexception/ThrowableWrapper;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, p1, p2, p3, p4}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;IZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 7
    new-instance v0, Lcom/arthenica/smartexception/ThrowableWrapper;

    invoke-direct {v0, p0}, Lcom/arthenica/smartexception/ThrowableWrapper;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 8
    new-instance v0, Lcom/arthenica/smartexception/ThrowableWrapper;

    invoke-direct {v0, p0}, Lcom/arthenica/smartexception/ThrowableWrapper;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, p1, p2}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/arthenica/smartexception/ThrowableWrapper;

    invoke-direct {v0, p0}, Lcom/arthenica/smartexception/ThrowableWrapper;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, p1, p2, p3}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/arthenica/smartexception/ThrowableWrapper;

    invoke-direct {v0, p0}, Lcom/arthenica/smartexception/ThrowableWrapper;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, p1, p2, p3, p4}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZ)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/arthenica/smartexception/ThrowableWrapper;

    invoke-direct {v0, p0}, Lcom/arthenica/smartexception/ThrowableWrapper;-><init>(Ljava/lang/Throwable;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZ)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/arthenica/smartexception/ThrowableWrapper;

    invoke-direct {v0, p0}, Lcom/arthenica/smartexception/ThrowableWrapper;-><init>(Ljava/lang/Throwable;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Lcom/arthenica/smartexception/ThrowableWrapper;

    invoke-direct {v0, p0}, Lcom/arthenica/smartexception/ThrowableWrapper;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Lcom/arthenica/smartexception/ThrowableWrapper;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isPrintPackageInformation()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/arthenica/smartexception/AbstractExceptions;->isPrintPackageInformation()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static registerGroupPackage(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->registerGroupPackage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static registerIgnorePackage(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->registerIgnorePackage(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static registerRootPackage(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->registerRootPackage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static searchCause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->searchCause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static searchCause(Ljava/lang/Throwable;Ljava/lang/Class;I)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 4
    invoke-static {p0, p1, p2}, Lcom/arthenica/smartexception/AbstractExceptions;->searchCause(Ljava/lang/Throwable;Ljava/lang/Class;I)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static searchCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/arthenica/smartexception/AbstractExceptions;->searchCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static searchCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1, p2, p3}, Lcom/arthenica/smartexception/AbstractExceptions;->searchCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static setIgnoreAllCauses(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->setIgnoreAllCauses(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setPrintPackageInformation(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->setPrintPackageInformation(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setPrintSuppressedExceptions(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->setPrintSuppressedExceptions(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setStackTraceElementSerializer(Lcom/arthenica/smartexception/StackTraceElementSerializer;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->setStackTraceElementSerializer(Lcom/arthenica/smartexception/StackTraceElementSerializer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
