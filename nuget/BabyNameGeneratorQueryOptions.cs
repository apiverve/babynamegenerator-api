using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.BabyNameGenerator
{
    /// <summary>
    /// Query options for the Baby Name Generator API
    /// </summary>
    public class BabyNameGeneratorQueryOptions
    {
        /// <summary>
        /// The gender for the generated names
        /// </summary>
        [JsonProperty("gender")]
        public string Gender { get; set; }

        /// <summary>
        /// The number of names to generate
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }
    }
}
