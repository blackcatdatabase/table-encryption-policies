<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\EncryptionPolicies\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Žádná logika; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class EncryptionPolicyDto {
    public function __construct(
        public readonly ?int $id,
        public readonly string $policyName,
        public readonly string $mode,
        public readonly string $layerSelection,
        public readonly int $minLayers,
        public readonly int $maxLayers,
        public readonly array|null $aadTemplate,
        public readonly ?string $notes,
        public readonly \DateTimeImmutable $createdAt
    ) {}

    /** Vhodné pro serializaci/logování (bez binárních/velkých blobů). */
    public function toArray(): array {
        // get_object_vars funguje dobře s public readonly vlastnostmi
        return get_object_vars($this);
    }
}
